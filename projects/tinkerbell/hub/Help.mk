


########### DO NOT EDIT #############################
# To update call: make add-generated-help-block
# This is added to help document dynamic targets and support shell autocompletion


##@ GIT/Repo Targets
clone-repo:  ## Clone upstream `hub`
checkout-repo: ## Checkout upstream tag based on value in GIT_TAG file

##@ Binary Targets
binaries: ## Build all binaries: `cexec kexec image2disk oci2disk writefile` for `linux/amd64 linux/arm64`
_output/bin/hub/linux-amd64/cexec: ## Build `_output/bin/hub/linux-amd64/cexec`
_output/bin/hub/linux-amd64/kexec: ## Build `_output/bin/hub/linux-amd64/kexec`
_output/bin/hub/linux-amd64/image2disk: ## Build `_output/bin/hub/linux-amd64/image2disk`
_output/bin/hub/linux-amd64/oci2disk: ## Build `_output/bin/hub/linux-amd64/oci2disk`
_output/bin/hub/linux-amd64/writefile: ## Build `_output/bin/hub/linux-amd64/writefile`
_output/bin/hub/linux-arm64/cexec: ## Build `_output/bin/hub/linux-arm64/cexec`
_output/bin/hub/linux-arm64/kexec: ## Build `_output/bin/hub/linux-arm64/kexec`
_output/bin/hub/linux-arm64/image2disk: ## Build `_output/bin/hub/linux-arm64/image2disk`
_output/bin/hub/linux-arm64/oci2disk: ## Build `_output/bin/hub/linux-arm64/oci2disk`
_output/bin/hub/linux-arm64/writefile: ## Build `_output/bin/hub/linux-arm64/writefile`

##@ Image Targets
local-images: ## Builds `cexec/images/amd64 kexec/images/amd64 image2disk/images/amd64 oci2disk/images/amd64 writefile/images/amd64` as oci tars for presumbit validation
images: ## Pushes `cexec/images/push kexec/images/push image2disk/images/push oci2disk/images/push writefile/images/push` to IMAGE_REPO
cexec/images/amd64: ## Builds/pushes `cexec/images/amd64`
kexec/images/amd64: ## Builds/pushes `kexec/images/amd64`
image2disk/images/amd64: ## Builds/pushes `image2disk/images/amd64`
oci2disk/images/amd64: ## Builds/pushes `oci2disk/images/amd64`
writefile/images/amd64: ## Builds/pushes `writefile/images/amd64`
cexec/images/push: ## Builds/pushes `cexec/images/push`
kexec/images/push: ## Builds/pushes `kexec/images/push`
image2disk/images/push: ## Builds/pushes `image2disk/images/push`
oci2disk/images/push: ## Builds/pushes `oci2disk/images/push`
writefile/images/push: ## Builds/pushes `writefile/images/push`

##@ Checksum Targets
checksums: ## Update checksums file based on currently built binaries.
validate-checksums: # Validate checksums of currently built binaries against checksums file.

##@ License Targets
gather-licenses: ## Helper to call $(GATHER_LICENSES_TARGETS) which gathers all licenses
attribution: ## Generates attribution from licenses gathered during `gather-licenses`.
attribution-pr: ## Generates PR to update attribution files for projects

##@ Clean Targets
clean: ## Removes source and _output directory
clean-repo: ## Removes source directory

##@ Helpers
help: ## Display this help
add-generated-help-block: ## Add or update generated help block to document project make file and support shell auto completion

##@ Build Targets
build: ## Called via prow presubmit, calls `validate-checksums local-images attribution  attribution-pr`
release: ## Called via prow postsubmit + release jobs, calls `validate-checksums images `
########### END GENERATED ###########################
