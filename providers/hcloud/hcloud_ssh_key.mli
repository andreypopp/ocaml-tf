(** Provides a Hetzner Cloud SSH key resource to manage SSH keys for server access.

## Example Usage

```hcl
# Create a new SSH key
resource hcloud_ssh_key default {
  name       = Terraform Example
  public_key = file(~/.ssh/id_rsa.pub)
}
```
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type hcloud_ssh_key

val hcloud_ssh_key :
  ?labels:(string * string prop) list ->
  name:string prop ->
  public_key:string prop ->
  unit ->
  hcloud_ssh_key

val yojson_of_hcloud_ssh_key : hcloud_ssh_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  fingerprint : string prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  public_key : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?labels:(string * string prop) list ->
  name:string prop ->
  public_key:string prop ->
  string ->
  t

val make :
  ?labels:(string * string prop) list ->
  name:string prop ->
  public_key:string prop ->
  string ->
  t Tf_core.resource
