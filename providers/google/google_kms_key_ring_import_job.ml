(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type attestation = { content : string prop; format : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : attestation) -> ()

let yojson_of_attestation =
  (function
   | { content = v_content; format = v_format } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_format in
         ("format", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content in
         ("content", arg) :: bnds
       in
       `Assoc bnds
    : attestation -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_attestation

[@@@deriving.end]

type public_key = { pem : string prop } [@@deriving_inline yojson_of]

let _ = fun (_ : public_key) -> ()

let yojson_of_public_key =
  (function
   | { pem = v_pem } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pem in
         ("pem", arg) :: bnds
       in
       `Assoc bnds
    : public_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_public_key

[@@@deriving.end]

type google_kms_key_ring_import_job = {
  id : string prop option; [@option]
  import_job_id : string prop;
  import_method : string prop;
  key_ring : string prop;
  protection_level : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_kms_key_ring_import_job) -> ()

let yojson_of_google_kms_key_ring_import_job =
  (function
   | {
       id = v_id;
       import_job_id = v_import_job_id;
       import_method = v_import_method;
       key_ring = v_key_ring;
       protection_level = v_protection_level;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_protection_level
         in
         ("protection_level", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_ring in
         ("key_ring", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_import_method in
         ("import_method", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_import_job_id in
         ("import_job_id", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_kms_key_ring_import_job ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_kms_key_ring_import_job

[@@@deriving.end]

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
