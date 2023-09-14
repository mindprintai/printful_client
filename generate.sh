#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(dirname "$(realpath "$0")")"
cd "${SCRIPT_DIR}"

GENERATOR="ruby"
OUTPUT_DIR="generated"

echo "Generating API client..."
rm -rf "${OUTPUT_DIR}"
docker run --rm -v ${PWD}:/local \
  openapitools/openapi-generator-cli generate \
    --skip-validate-spec \
    -i "/local/swagger.json" \
    -g "${GENERATOR}" \
    -o "/local/${OUTPUT_DIR}" \
    --api-name-suffix 'Client' \
    --ignore-file-override "/local/.openapi-generator-ignore" \
    --additional-properties=gemName="printful_client" \
    --additional-properties=gemVersion="1.0.2" \
    --additional-properties=gemAuthor="Mindprint.ai" \
    --additional-properties=gemAuthorEmail="tech@mindprint.ai" \
    --additional-properties=gemSummary="A Ruby client for the Printful.com API" \
    --additional-properties=gemDescription="A Ruby client for the Printful.com API (https://developers.printful.com/docs/) generated using their OpenAPI/Swagger spec and the OpenAPI Generator (https://openapi-generator.tech/) tool." \
    --additional-properties=gemHomepage="https://github.com/mindprintai/printful_client" \
    --additional-properties=gemLicense="MIT" \
    --additional-properties=moduleName="Printful"

echo "Applying post-processing operations on generated files..."
sudo chown -R "${USER}:${USER}" "${OUTPUT_DIR}"
cd "${SCRIPT_DIR}/${OUTPUT_DIR}"
sed -i 's#^README.md$#docs/README.md#' ".openapi-generator/FILES"
sed -r 's#^(.*)$#\1 linguist-generated=true#' ".openapi-generator/FILES" > ".gitattributes"
echo "swagger.json linguist-generated=true" >> ".gitattributes"
rm -rf ".openapi-generator"
mv "README.md" "docs/"

echo "Running post-generate tests..."
bundle install
bundle exec rspec

echo "Overwriting existing files with generator output..."
cd "${SCRIPT_DIR}"
for fn in $(ls "${OUTPUT_DIR}") ; do
  if [[ -d "${OUTPUT_DIR}/${fn}" ]] ; then
    rm -rf "${fn}"
  fi

  mv "${OUTPUT_DIR}/${fn}" "${fn}"
done

rm -rf "${OUTPUT_DIR}"
