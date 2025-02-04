


########### DO NOT EDIT #############################
# To update call: make add-generated-help-block
# This is added to help document dynamic targets and support shell autocompletion


##@ Image Targets
local-images: ## Builds `redis/images/amd64` as oci tars for presumbit validation
images: ## Pushes `redis/images/push` to IMAGE_REPO
redis/images/amd64: ## Builds/pushes `redis/images/amd64`
redis/images/push: ## Builds/pushes `redis/images/push`

##@ Clean Targets
clean: ## Removes source and _output directory

##@ Helpers
help: ## Display this help
add-generated-help-block: ## Add or update generated help block to document project make file and support shell auto completion

##@ Build Targets
build: ## Called via prow presubmit, calls `validate-checksums local-images attribution attribution-pr `
release: ## Called via prow postsubmit + release jobs, calls `validate-checksums images `
########### END GENERATED ###########################
