(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type audit_log_config = {
  exempted_members : string prop list option; [@option]
  log_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : audit_log_config) -> ()

let yojson_of_audit_log_config =
  (function
   | { exempted_members = v_exempted_members; log_type = v_log_type }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_log_type in
         ("log_type", arg) :: bnds
       in
       let bnds =
         match v_exempted_members with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "exempted_members", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : audit_log_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_audit_log_config

[@@@deriving.end]

type google_organization_iam_audit_config = {
  id : string prop option; [@option]
  org_id : string prop;
  service : string prop;
  audit_log_config : audit_log_config list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_organization_iam_audit_config) -> ()

let yojson_of_google_organization_iam_audit_config =
  (function
   | {
       id = v_id;
       org_id = v_org_id;
       service = v_service;
       audit_log_config = v_audit_log_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_audit_log_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_audit_log_config)
               v_audit_log_config
           in
           let bnd = "audit_log_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_org_id in
         ("org_id", arg) :: bnds
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
    : google_organization_iam_audit_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_organization_iam_audit_config

[@@@deriving.end]

let audit_log_config ?exempted_members ~log_type () :
    audit_log_config =
  { exempted_members; log_type }

let google_organization_iam_audit_config ?id ~org_id ~service
    ~audit_log_config () : google_organization_iam_audit_config =
  { id; org_id; service; audit_log_config }

type t = {
  tf_name : string;
  etag : string prop;
  id : string prop;
  org_id : string prop;
  service : string prop;
}

let make ?id ~org_id ~service ~audit_log_config __id =
  let __type = "google_organization_iam_audit_config" in
  let __attrs =
    ({
       tf_name = __id;
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       org_id = Prop.computed __type __id "org_id";
       service = Prop.computed __type __id "service";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_organization_iam_audit_config
        (google_organization_iam_audit_config ?id ~org_id ~service
           ~audit_log_config ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~org_id ~service ~audit_log_config __id =
  let (r : _ Tf_core.resource) =
    make ?id ~org_id ~service ~audit_log_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
