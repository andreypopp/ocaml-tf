(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type exclude_map = {
  account : string prop list option; [@option]
  orgunit : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : exclude_map) -> ()

let yojson_of_exclude_map =
  (function
   | { account = v_account; orgunit = v_orgunit } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_orgunit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "orgunit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "account", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : exclude_map -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_exclude_map

[@@@deriving.end]

type include_map = {
  account : string prop list option; [@option]
  orgunit : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : include_map) -> ()

let yojson_of_include_map =
  (function
   | { account = v_account; orgunit = v_orgunit } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_orgunit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "orgunit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "account", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : include_map -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_include_map

[@@@deriving.end]

type security_service_policy_data__policy_option__network_firewall_policy = {
  firewall_deployment_model : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       security_service_policy_data__policy_option__network_firewall_policy) ->
  ()

let yojson_of_security_service_policy_data__policy_option__network_firewall_policy
    =
  (function
   | { firewall_deployment_model = v_firewall_deployment_model } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_firewall_deployment_model with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "firewall_deployment_model", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : security_service_policy_data__policy_option__network_firewall_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_security_service_policy_data__policy_option__network_firewall_policy

[@@@deriving.end]

type security_service_policy_data__policy_option__third_party_firewall_policy = {
  firewall_deployment_model : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       security_service_policy_data__policy_option__third_party_firewall_policy) ->
  ()

let yojson_of_security_service_policy_data__policy_option__third_party_firewall_policy
    =
  (function
   | { firewall_deployment_model = v_firewall_deployment_model } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_firewall_deployment_model with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "firewall_deployment_model", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : security_service_policy_data__policy_option__third_party_firewall_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_security_service_policy_data__policy_option__third_party_firewall_policy

[@@@deriving.end]

type security_service_policy_data__policy_option = {
  network_firewall_policy :
    security_service_policy_data__policy_option__network_firewall_policy
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  third_party_firewall_policy :
    security_service_policy_data__policy_option__third_party_firewall_policy
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : security_service_policy_data__policy_option) -> ()

let yojson_of_security_service_policy_data__policy_option =
  (function
   | {
       network_firewall_policy = v_network_firewall_policy;
       third_party_firewall_policy = v_third_party_firewall_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_third_party_firewall_policy then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_security_service_policy_data__policy_option__third_party_firewall_policy)
               v_third_party_firewall_policy
           in
           let bnd = "third_party_firewall_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network_firewall_policy then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_security_service_policy_data__policy_option__network_firewall_policy)
               v_network_firewall_policy
           in
           let bnd = "network_firewall_policy", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : security_service_policy_data__policy_option ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_security_service_policy_data__policy_option

[@@@deriving.end]

type security_service_policy_data = {
  managed_service_data : string prop option; [@option]
  type_ : string prop; [@key "type"]
  policy_option : security_service_policy_data__policy_option list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : security_service_policy_data) -> ()

let yojson_of_security_service_policy_data =
  (function
   | {
       managed_service_data = v_managed_service_data;
       type_ = v_type_;
       policy_option = v_policy_option;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_policy_option then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_security_service_policy_data__policy_option)
               v_policy_option
           in
           let bnd = "policy_option", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_managed_service_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "managed_service_data", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : security_service_policy_data ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_security_service_policy_data

[@@@deriving.end]

type aws_fms_policy = {
  delete_all_policy_resources : bool prop option; [@option]
  delete_unused_fm_managed_resources : bool prop option; [@option]
  description : string prop option; [@option]
  exclude_resource_tags : bool prop;
  id : string prop option; [@option]
  name : string prop;
  remediation_enabled : bool prop option; [@option]
  resource_tags : (string * string prop) list option; [@option]
  resource_type : string prop option; [@option]
  resource_type_list : string prop list option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  exclude_map : exclude_map list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  include_map : include_map list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  security_service_policy_data : security_service_policy_data list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_fms_policy) -> ()

let yojson_of_aws_fms_policy =
  (function
   | {
       delete_all_policy_resources = v_delete_all_policy_resources;
       delete_unused_fm_managed_resources =
         v_delete_unused_fm_managed_resources;
       description = v_description;
       exclude_resource_tags = v_exclude_resource_tags;
       id = v_id;
       name = v_name;
       remediation_enabled = v_remediation_enabled;
       resource_tags = v_resource_tags;
       resource_type = v_resource_type;
       resource_type_list = v_resource_type_list;
       tags = v_tags;
       tags_all = v_tags_all;
       exclude_map = v_exclude_map;
       include_map = v_include_map;
       security_service_policy_data = v_security_service_policy_data;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_security_service_policy_data then bnds
         else
           let arg =
             (yojson_of_list yojson_of_security_service_policy_data)
               v_security_service_policy_data
           in
           let bnd = "security_service_policy_data", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_include_map then bnds
         else
           let arg =
             (yojson_of_list yojson_of_include_map) v_include_map
           in
           let bnd = "include_map", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_exclude_map then bnds
         else
           let arg =
             (yojson_of_list yojson_of_exclude_map) v_exclude_map
           in
           let bnd = "exclude_map", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_type_list with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "resource_type_list", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "resource_tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_remediation_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "remediation_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_exclude_resource_tags
         in
         ("exclude_resource_tags", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete_unused_fm_managed_resources with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "delete_unused_fm_managed_resources", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete_all_policy_resources with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "delete_all_policy_resources", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_fms_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_fms_policy

[@@@deriving.end]

let exclude_map ?account ?orgunit () : exclude_map =
  { account; orgunit }

let include_map ?account ?orgunit () : include_map =
  { account; orgunit }

let security_service_policy_data__policy_option__network_firewall_policy
    ?firewall_deployment_model () :
    security_service_policy_data__policy_option__network_firewall_policy
    =
  { firewall_deployment_model }

let security_service_policy_data__policy_option__third_party_firewall_policy
    ?firewall_deployment_model () :
    security_service_policy_data__policy_option__third_party_firewall_policy
    =
  { firewall_deployment_model }

let security_service_policy_data__policy_option
    ?(network_firewall_policy = [])
    ?(third_party_firewall_policy = []) () :
    security_service_policy_data__policy_option =
  { network_firewall_policy; third_party_firewall_policy }

let security_service_policy_data ?managed_service_data
    ?(policy_option = []) ~type_ () : security_service_policy_data =
  { managed_service_data; type_; policy_option }

let aws_fms_policy ?delete_all_policy_resources
    ?delete_unused_fm_managed_resources ?description ?id
    ?remediation_enabled ?resource_tags ?resource_type
    ?resource_type_list ?tags ?tags_all ?(exclude_map = [])
    ?(include_map = []) ~exclude_resource_tags ~name
    ~security_service_policy_data () : aws_fms_policy =
  {
    delete_all_policy_resources;
    delete_unused_fm_managed_resources;
    description;
    exclude_resource_tags;
    id;
    name;
    remediation_enabled;
    resource_tags;
    resource_type;
    resource_type_list;
    tags;
    tags_all;
    exclude_map;
    include_map;
    security_service_policy_data;
  }

type t = {
  tf_name : string;
  arn : string prop;
  delete_all_policy_resources : bool prop;
  delete_unused_fm_managed_resources : bool prop;
  description : string prop;
  exclude_resource_tags : bool prop;
  id : string prop;
  name : string prop;
  policy_update_token : string prop;
  remediation_enabled : bool prop;
  resource_tags : (string * string) list prop;
  resource_type : string prop;
  resource_type_list : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?delete_all_policy_resources
    ?delete_unused_fm_managed_resources ?description ?id
    ?remediation_enabled ?resource_tags ?resource_type
    ?resource_type_list ?tags ?tags_all ?(exclude_map = [])
    ?(include_map = []) ~exclude_resource_tags ~name
    ~security_service_policy_data __id =
  let __type = "aws_fms_policy" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       delete_all_policy_resources =
         Prop.computed __type __id "delete_all_policy_resources";
       delete_unused_fm_managed_resources =
         Prop.computed __type __id
           "delete_unused_fm_managed_resources";
       description = Prop.computed __type __id "description";
       exclude_resource_tags =
         Prop.computed __type __id "exclude_resource_tags";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       policy_update_token =
         Prop.computed __type __id "policy_update_token";
       remediation_enabled =
         Prop.computed __type __id "remediation_enabled";
       resource_tags = Prop.computed __type __id "resource_tags";
       resource_type = Prop.computed __type __id "resource_type";
       resource_type_list =
         Prop.computed __type __id "resource_type_list";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_fms_policy
        (aws_fms_policy ?delete_all_policy_resources
           ?delete_unused_fm_managed_resources ?description ?id
           ?remediation_enabled ?resource_tags ?resource_type
           ?resource_type_list ?tags ?tags_all ~exclude_map
           ~include_map ~exclude_resource_tags ~name
           ~security_service_policy_data ());
    attrs = __attrs;
  }

let register ?tf_module ?delete_all_policy_resources
    ?delete_unused_fm_managed_resources ?description ?id
    ?remediation_enabled ?resource_tags ?resource_type
    ?resource_type_list ?tags ?tags_all ?(exclude_map = [])
    ?(include_map = []) ~exclude_resource_tags ~name
    ~security_service_policy_data __id =
  let (r : _ Tf_core.resource) =
    make ?delete_all_policy_resources
      ?delete_unused_fm_managed_resources ?description ?id
      ?remediation_enabled ?resource_tags ?resource_type
      ?resource_type_list ?tags ?tags_all ~exclude_map ~include_map
      ~exclude_resource_tags ~name ~security_service_policy_data __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
