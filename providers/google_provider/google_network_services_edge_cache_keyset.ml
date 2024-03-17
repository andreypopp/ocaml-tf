(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_network_services_edge_cache_keyset__public_key = {
  id : string;
      (** The ID of the public key. The ID must be 1-63 characters long, and comply with RFC1035.
The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]*
which means the first character must be a letter, and all following characters must be a dash, underscore, letter or digit. *)
  managed : bool option; [@option]
      (** Set to true to have the CDN automatically manage this public key value. *)
  value : string option; [@option]
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

type google_network_services_edge_cache_keyset__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_network_services_edge_cache_keyset__timeouts *)

type google_network_services_edge_cache_keyset__validation_shared_keys = {
  secret_version : string;
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
  description : string option; [@option]
      (** A human-readable description of the resource. *)
  id : string option; [@option]  (** id *)
  labels : (string * string) list option; [@option]
      (** Set of label tags associated with the EdgeCache resource.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string;
      (** Name of the resource; provided by the client when the resource is created.
The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,
and all following characters must be a dash, underscore, letter or digit. *)
  project : string option; [@option]  (** project *)
  public_key :
    google_network_services_edge_cache_keyset__public_key list;
  timeouts :
    google_network_services_edge_cache_keyset__timeouts option;
  validation_shared_keys :
    google_network_services_edge_cache_keyset__validation_shared_keys
    list;
}
[@@deriving yojson_of]
(** google_network_services_edge_cache_keyset *)

let google_network_services_edge_cache_keyset ?description ?id
    ?labels ?project ?timeouts ~name ~public_key
    ~validation_shared_keys __resource_id =
  let __resource_type =
    "google_network_services_edge_cache_keyset"
  in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_network_services_edge_cache_keyset __resource);
  ()
