## NOTE: About [/modules](/modules).

HashiCorp's Terraform Registry requires every repo to have `*.tf` file(s) in its root dir.
This repository does not have an uniq entry point because it is a collection of independent modules which can't all be in the root dir [/](/../../).
Therefore, they all are declared in the [../modules.tf](../modules.tf) to be shown as sub-modules.
