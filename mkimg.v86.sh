profile_v86() {
	title="v86"
	desc="Mininal alpine build intended to run on v86"
	profile_base
	profile_abbrev="std"
	image_ext="iso"
	arch="x86"
	output_format="iso"
	kernel_addons="xtables-addons"
	apks="$apks bash python python3"
}

