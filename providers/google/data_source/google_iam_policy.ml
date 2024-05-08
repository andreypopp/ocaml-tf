(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type audit_config__audit_log_configs = {
  exempted_members : string prop list option; [@option]
  log_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : audit_config__audit_log_configs) -> ()

let yojson_of_audit_config__audit_log_configs =
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
    : audit_config__audit_log_configs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_audit_config__audit_log_configs

[@@@deriving.end]

type audit_config = {
  service : string prop;
  audit_log_configs : audit_config__audit_log_configs list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : audit_config) -> ()

let yojson_of_audit_config =
  (function
   | { service = v_service; audit_log_configs = v_audit_log_configs }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_audit_log_configs then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_audit_config__audit_log_configs)
               v_audit_log_configs
           in
           let bnd = "audit_log_configs", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       `Assoc bnds
    : audit_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_audit_config

[@@@deriving.end]

type binding__condition = {
  description : string prop option; [@option]
  expression : string prop;
  title : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : binding__condition) -> ()

let yojson_of_binding__condition =
  (function
   | {
       description = v_description;
       expression = v_expression;
       title = v_title;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_title in
         ("title", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_expression in
         ("expression", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : binding__condition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_binding__condition

[@@@deriving.end]

type binding = {
  members : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  role : string prop;
  condition : binding__condition list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : binding) -> ()

let yojson_of_binding =
  (function
   | { members = v_members; role = v_role; condition = v_condition }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_condition then bnds
         else
           let arg =
             (yojson_of_list yojson_of_binding__condition)
               v_condition
           in
           let bnd = "condition", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role in
         ("role", arg) :: bnds
       in
       let bnds =
         if [] = v_members then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_members
           in
           let bnd = "members", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : binding -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_binding

[@@@deriving.end]

type google_iam_policy = {
  id : string prop option; [@option]
  audit_config : audit_config list;
      [@default []] [@yojson_drop_default ( = )]
  binding : binding list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_iam_policy) -> ()

let yojson_of_google_iam_policy =
  (function
   | {
       id = v_id;
       audit_config = v_audit_config;
       binding = v_binding;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_binding then bnds
         else
           let arg = (yojson_of_list yojson_of_binding) v_binding in
           let bnd = "binding", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_audit_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_audit_config) v_audit_config
           in
           let bnd = "audit_config", arg in
           bnd :: bnds
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
    : google_iam_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_iam_policy

[@@@deriving.end]

let audit_config__audit_log_configs ?exempted_members ~log_type () :
    audit_config__audit_log_configs =
  { exempted_members; log_type }

let audit_config ~service ~audit_log_configs () : audit_config =
  { service; audit_log_configs }

let binding__condition ?description ~expression ~title () :
    binding__condition =
  { description; expression; title }

let binding ?(condition = []) ~members ~role () : binding =
  { members; role; condition }

let google_iam_policy ?id ~audit_config ~binding () :
    google_iam_policy =
  { id; audit_config; binding }

type t = {
  tf_name : string;
  id : string prop;
  policy_data : string prop;
}

let make ?id ~audit_config ~binding __id =
  let __type = "google_iam_policy" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       policy_data = Prop.computed __type __id "policy_data";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_iam_policy
        (google_iam_policy ?id ~audit_config ~binding ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~audit_config ~binding __id =
  let (r : _ Tf_core.resource) =
    make ?id ~audit_config ~binding __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
