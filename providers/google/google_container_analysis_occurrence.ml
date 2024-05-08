(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type attestation__signatures = {
  public_key_id : string prop;
  signature : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : attestation__signatures) -> ()

let yojson_of_attestation__signatures =
  (function
   | { public_key_id = v_public_key_id; signature = v_signature } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_signature with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "signature", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_public_key_id in
         ("public_key_id", arg) :: bnds
       in
       `Assoc bnds
    : attestation__signatures -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_attestation__signatures

[@@@deriving.end]

type attestation = {
  serialized_payload : string prop;
  signatures : attestation__signatures list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : attestation) -> ()

let yojson_of_attestation =
  (function
   | {
       serialized_payload = v_serialized_payload;
       signatures = v_signatures;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_signatures then bnds
         else
           let arg =
             (yojson_of_list yojson_of_attestation__signatures)
               v_signatures
           in
           let bnd = "signatures", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_serialized_payload
         in
         ("serialized_payload", arg) :: bnds
       in
       `Assoc bnds
    : attestation -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_attestation

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
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

type google_container_analysis_occurrence = {
  id : string prop option; [@option]
  note_name : string prop;
  project : string prop option; [@option]
  remediation : string prop option; [@option]
  resource_uri : string prop;
  attestation : attestation list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_container_analysis_occurrence) -> ()

let yojson_of_google_container_analysis_occurrence =
  (function
   | {
       id = v_id;
       note_name = v_note_name;
       project = v_project;
       remediation = v_remediation;
       resource_uri = v_resource_uri;
       attestation = v_attestation;
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
         if [] = v_attestation then bnds
         else
           let arg =
             (yojson_of_list yojson_of_attestation) v_attestation
           in
           let bnd = "attestation", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_uri in
         ("resource_uri", arg) :: bnds
       in
       let bnds =
         match v_remediation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "remediation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_note_name in
         ("note_name", arg) :: bnds
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
    : google_container_analysis_occurrence ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_container_analysis_occurrence

[@@@deriving.end]

let attestation__signatures ?signature ~public_key_id () :
    attestation__signatures =
  { public_key_id; signature }

let attestation ~serialized_payload ~signatures () : attestation =
  { serialized_payload; signatures }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_container_analysis_occurrence ?id ?project ?remediation
    ?timeouts ~note_name ~resource_uri ~attestation () :
    google_container_analysis_occurrence =
  {
    id;
    note_name;
    project;
    remediation;
    resource_uri;
    attestation;
    timeouts;
  }

type t = {
  tf_name : string;
  create_time : string prop;
  id : string prop;
  kind : string prop;
  name : string prop;
  note_name : string prop;
  project : string prop;
  remediation : string prop;
  resource_uri : string prop;
  update_time : string prop;
}

let make ?id ?project ?remediation ?timeouts ~note_name ~resource_uri
    ~attestation __id =
  let __type = "google_container_analysis_occurrence" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       id = Prop.computed __type __id "id";
       kind = Prop.computed __type __id "kind";
       name = Prop.computed __type __id "name";
       note_name = Prop.computed __type __id "note_name";
       project = Prop.computed __type __id "project";
       remediation = Prop.computed __type __id "remediation";
       resource_uri = Prop.computed __type __id "resource_uri";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_container_analysis_occurrence
        (google_container_analysis_occurrence ?id ?project
           ?remediation ?timeouts ~note_name ~resource_uri
           ~attestation ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?remediation ?timeouts
    ~note_name ~resource_uri ~attestation __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?remediation ?timeouts ~note_name ~resource_uri
      ~attestation __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
