(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_kms_key_ring_import_job__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_kms_key_ring_import_job__timeouts *)

type google_kms_key_ring_import_job__attestation = {
  content : string prop;  (** content *)
  format : string prop;  (** format *)
}
[@@deriving yojson_of]

type google_kms_key_ring_import_job__public_key = {
  pem : string prop;  (** pem *)
}
[@@deriving yojson_of]

type google_kms_key_ring_import_job = {
  id : string prop option; [@option]  (** id *)
  import_job_id : string prop;
      (** It must be unique within a KeyRing and match the regular expression [a-zA-Z0-9_-]{1,63} *)
  import_method : string prop;
      (** The wrapping method to be used for incoming key material. Possible values: [RSA_OAEP_3072_SHA1_AES_256, RSA_OAEP_4096_SHA1_AES_256] *)
  key_ring : string prop;
      (** The KeyRing that this import job belongs to.
Format: ''projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}''. *)
  protection_level : string prop;
      (** The protection level of the ImportJob. This must match the protectionLevel of the
versionTemplate on the CryptoKey you attempt to import into. Possible values: [SOFTWARE, HSM, EXTERNAL] *)
  timeouts : google_kms_key_ring_import_job__timeouts option;
}
[@@deriving yojson_of]
(** google_kms_key_ring_import_job *)

type t = {
  attestation :
    google_kms_key_ring_import_job__attestation list prop;
  expire_time : string prop;
  id : string prop;
  import_job_id : string prop;
  import_method : string prop;
  key_ring : string prop;
  name : string prop;
  protection_level : string prop;
  public_key : google_kms_key_ring_import_job__public_key list prop;
  state : string prop;
}

let google_kms_key_ring_import_job ?id ?timeouts ~import_job_id
    ~import_method ~key_ring ~protection_level __resource_id =
  let __resource_type = "google_kms_key_ring_import_job" in
  let __resource =
    ({
       id;
       import_job_id;
       import_method;
       key_ring;
       protection_level;
       timeouts;
     }
      : google_kms_key_ring_import_job)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_kms_key_ring_import_job __resource);
  let __resource_attributes =
    ({
       attestation =
         Prop.computed __resource_type __resource_id "attestation";
       expire_time =
         Prop.computed __resource_type __resource_id "expire_time";
       id = Prop.computed __resource_type __resource_id "id";
       import_job_id =
         Prop.computed __resource_type __resource_id "import_job_id";
       import_method =
         Prop.computed __resource_type __resource_id "import_method";
       key_ring =
         Prop.computed __resource_type __resource_id "key_ring";
       name = Prop.computed __resource_type __resource_id "name";
       protection_level =
         Prop.computed __resource_type __resource_id
           "protection_level";
       public_key =
         Prop.computed __resource_type __resource_id "public_key";
       state = Prop.computed __resource_type __resource_id "state";
     }
      : t)
  in
  __resource_attributes
