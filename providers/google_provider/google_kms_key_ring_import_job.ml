(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_kms_key_ring_import_job__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_kms_key_ring_import_job__timeouts *)

type google_kms_key_ring_import_job__attestation = {
  content : string;  (** content *)
  format : string;  (** format *)
}
[@@deriving yojson_of]

type google_kms_key_ring_import_job__public_key = {
  pem : string;  (** pem *)
}
[@@deriving yojson_of]

type google_kms_key_ring_import_job = {
  import_job_id : string;
      (** It must be unique within a KeyRing and match the regular expression [a-zA-Z0-9_-]{1,63} *)
  import_method : string;
      (** The wrapping method to be used for incoming key material. Possible values: [RSA_OAEP_3072_SHA1_AES_256, RSA_OAEP_4096_SHA1_AES_256] *)
  key_ring : string;
      (** The KeyRing that this import job belongs to.
Format: ''projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}''. *)
  protection_level : string;
      (** The protection level of the ImportJob. This must match the protectionLevel of the
versionTemplate on the CryptoKey you attempt to import into. Possible values: [SOFTWARE, HSM, EXTERNAL] *)
  timeouts : google_kms_key_ring_import_job__timeouts option;
}
[@@deriving yojson_of]
(** google_kms_key_ring_import_job *)

let google_kms_key_ring_import_job ?timeouts ~import_job_id
    ~import_method ~key_ring ~protection_level __resource_id =
  let __resource_type = "google_kms_key_ring_import_job" in
  let __resource =
    {
      import_job_id;
      import_method;
      key_ring;
      protection_level;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_kms_key_ring_import_job __resource);
  ()
