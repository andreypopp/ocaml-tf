(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type public_key = {
  id : string prop;
      (** The ID of the public key. The ID must be 1-63 characters long, and comply with RFC1035.
The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]*
which means the first character must be a letter, and all following characters must be a dash, underscore, letter or digit. *)
  managed : bool prop option; [@option]
      (** Set to true to have the CDN automatically manage this public key value. *)
  value : string prop option; [@option]
      (** The base64-encoded value of the Ed25519 public key. The base64 encoding can be padded (44 bytes) or unpadded (43 bytes).
Representations or encodings of the public key other than this will be rejected with an error. *)
}
[@@deriving yojson_of]
(** An ordered list of Ed25519 public keys to use for validating signed requests.
You must specify 'public_keys' or 'validation_shared_keys' (or both). The keys in 'public_keys' are checked first.
You may specify no more than one Google-managed public key.
If you specify 'public_keys', you must specify at least one (1) key and may specify up to three (3) keys.

Ed25519 public keys are not secret, and only allow Google to validate a request was signed by your corresponding private key.
Ensure that the private key is kept secret, and that only authorized users can add public keys to a keyset. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type validation_shared_keys = {
  secret_version : string prop;
      (** The name of the secret version in Secret Manager.

The resource name of the secret version must be in the format 'projects/*/secrets/*/versions/*' where the '*' values are replaced by the secrets themselves.
The secrets must be at least 16 bytes large.  The recommended secret size depends on the signature algorithm you are using.
* If you are using HMAC-SHA1, we suggest 20-byte secrets.
* If you are using HMAC-SHA256, we suggest 32-byte secrets.
See RFC 2104, Section 3 for more details on these recommendations. *)
}
[@@deriving yojson_of]
(** An ordered list of shared keys to use for validating signed requests.
Shared keys are secret.  Ensure that only authorized users can add 'validation_shared_keys' to a keyset.
You can rotate keys by appending (pushing) a new key to the list of 'validation_shared_keys' and removing any superseded keys.
You must specify 'public_keys' or 'validation_shared_keys' (or both). The keys in 'public_keys' are checked first. *)

type google_network_services_edge_cache_keyset = {
  description : string prop option; [@option]
      (** A human-readable description of the resource. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Set of label tags associated with the EdgeCache resource.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string prop;
      (** Name of the resource; provided by the client when the resource is created.
The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,
and all following characters must be a dash, underscore, letter or digit. *)
  project : string prop option; [@option]  (** project *)
  public_key : public_key list;
  timeouts : timeouts option;
  validation_shared_keys : validation_shared_keys list;
}
[@@deriving yojson_of]
(** google_network_services_edge_cache_keyset *)

let public_key ?managed ?value ~id () : public_key =
  { id; managed; value }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let validation_shared_keys ~secret_version () :
    validation_shared_keys =
  { secret_version }

let google_network_services_edge_cache_keyset ?description ?id
    ?labels ?project ?timeouts ~name ~public_key
    ~validation_shared_keys () :
    google_network_services_edge_cache_keyset =
  {
    description;
    id;
    labels;
    name;
    project;
    public_key;
    timeouts;
    validation_shared_keys;
  }

type t = {
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
}

let register ?tf_module ?description ?id ?labels ?project ?timeouts
    ~name ~public_key ~validation_shared_keys __resource_id =
  let __resource_type =
    "google_network_services_edge_cache_keyset"
  in
  let __resource =
    google_network_services_edge_cache_keyset ?description ?id
      ?labels ?project ?timeouts ~name ~public_key
      ~validation_shared_keys ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_network_services_edge_cache_keyset __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
     }
      : t)
  in
  __resource_attributes
