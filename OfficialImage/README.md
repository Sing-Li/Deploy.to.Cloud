## Official docker hub image work-in-progress


`Dockerfile` is the final image builder, currently under revision.
*  the COPY in this file will be replaced by `curl` over https once our post-release build workflow is in place

`maketar.sh` will become part of our post-release build workflow, creating a deployable `.tgz` file - downloadable behind an https server. Verifiable via published checksum.

* this script will generate a checksum in `checksum.dat`
* for now, the Dockerfile needs to be manually updated to contain the checksum - this is acceptable for review; but we can also use a third-party public key based escrow and gpg fingerprints for a better implementation

`version 0.5.1` is just a place-holder version tag :  until our post-release build workflow is in place.
