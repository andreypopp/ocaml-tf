(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type attestation = {
  content : string prop;  (** content *)
  format : string prop;  (** format *)
}
[@@deriving yojson_of]

type public_key = { pem : string prop  (** pem *) }
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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_kms_key_ring_import_job *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_kms_key_ring_import_job ?id ?timeouts ~import_job_id
    ~import_method ~key_ring ~protection_level () :
    google_kms_key_ring_import_job =
  {
    id;
    import_job_id;
    import_method;
    key_ring;
    protection_level;
    timeouts;
  }

type t = {
  attestation : attestation list prop;
  expire_time : string prop;
  id : string prop;
  import_job_id : string prop;
  import_method : string prop;
  key_ring : string prop;
  name : string prop;
  protection_level : string prop;
  public_key : public_key list prop;
  state : string prop;
}

let make ?id ?timeouts ~import_job_id ~import_method ~key_ring
    ~protection_level __id =
  let __type = "google_kms_key_ring_import_job" in
  let __attrs =
    ({
       attestation = Prop.computed __type __id "attestation";
       expire_time = Prop.computed __type __id "expire_time";
       id = Prop.computed __type __id "id";
       import_job_id = Prop.computed __type __id "import_job_id";
       import_method = Prop.computed __type __id "import_method";
       key_ring = Prop.computed __type __id "key_ring";
       name = Prop.computed __type __id "name";
       protection_level =
         Prop.computed __type __id "protection_level";
       public_key = Prop.computed __type __id "public_key";
       state = Prop.computed __type __id "state";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_kms_key_ring_import_job
        (google_kms_key_ring_import_job ?id ?timeouts ~import_job_id
           ~import_method ~key_ring ~protection_level ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~import_job_id ~import_method
    ~key_ring ~protection_level __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~import_job_id ~import_method ~key_ring
      ~protection_level __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
