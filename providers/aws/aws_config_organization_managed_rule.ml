(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type aws_config_organization_managed_rule = {
  description : string prop option; [@option]
  excluded_accounts : string prop list option; [@option]
  id : string prop option; [@option]
  input_parameters : string prop option; [@option]
  maximum_execution_frequency : string prop option; [@option]
  name : string prop;
  resource_id_scope : string prop option; [@option]
  resource_types_scope : string prop list option; [@option]
  rule_identifier : string prop;
  tag_key_scope : string prop option; [@option]
  tag_value_scope : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_config_organization_managed_rule) -> ()

let yojson_of_aws_config_organization_managed_rule =
  (function
   | {
       description = v_description;
       excluded_accounts = v_excluded_accounts;
       id = v_id;
       input_parameters = v_input_parameters;
       maximum_execution_frequency = v_maximum_execution_frequency;
       name = v_name;
       resource_id_scope = v_resource_id_scope;
       resource_types_scope = v_resource_types_scope;
       rule_identifier = v_rule_identifier;
       tag_key_scope = v_tag_key_scope;
       tag_value_scope = v_tag_value_scope;
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
         match v_tag_value_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tag_value_scope", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tag_key_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tag_key_scope", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_rule_identifier
         in
         ("rule_identifier", arg) :: bnds
       in
       let bnds =
         match v_resource_types_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "resource_types_scope", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_id_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_id_scope", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_maximum_execution_frequency with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "maximum_execution_frequency", arg in
             bnd :: bnds
       in
       let bnds =
         match v_input_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "input_parameters", arg in
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
       let bnds =
         match v_excluded_accounts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "excluded_accounts", arg in
             bnd :: bnds
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
    : aws_config_organization_managed_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_config_organization_managed_rule

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_config_organization_managed_rule ?description
    ?excluded_accounts ?id ?input_parameters
    ?maximum_execution_frequency ?resource_id_scope
    ?resource_types_scope ?tag_key_scope ?tag_value_scope ?timeouts
    ~name ~rule_identifier () : aws_config_organization_managed_rule
    =
  {
    description;
    excluded_accounts;
    id;
    input_parameters;
    maximum_execution_frequency;
    name;
    resource_id_scope;
    resource_types_scope;
    rule_identifier;
    tag_key_scope;
    tag_value_scope;
    timeouts;
  }

type t = {
  arn : string prop;
  description : string prop;
  excluded_accounts : string list prop;
  id : string prop;
  input_parameters : string prop;
  maximum_execution_frequency : string prop;
  name : string prop;
  resource_id_scope : string prop;
  resource_types_scope : string list prop;
  rule_identifier : string prop;
  tag_key_scope : string prop;
  tag_value_scope : string prop;
}

let make ?description ?excluded_accounts ?id ?input_parameters
    ?maximum_execution_frequency ?resource_id_scope
    ?resource_types_scope ?tag_key_scope ?tag_value_scope ?timeouts
    ~name ~rule_identifier __id =
  let __type = "aws_config_organization_managed_rule" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       excluded_accounts =
         Prop.computed __type __id "excluded_accounts";
       id = Prop.computed __type __id "id";
       input_parameters =
         Prop.computed __type __id "input_parameters";
       maximum_execution_frequency =
         Prop.computed __type __id "maximum_execution_frequency";
       name = Prop.computed __type __id "name";
       resource_id_scope =
         Prop.computed __type __id "resource_id_scope";
       resource_types_scope =
         Prop.computed __type __id "resource_types_scope";
       rule_identifier = Prop.computed __type __id "rule_identifier";
       tag_key_scope = Prop.computed __type __id "tag_key_scope";
       tag_value_scope = Prop.computed __type __id "tag_value_scope";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_config_organization_managed_rule
        (aws_config_organization_managed_rule ?description
           ?excluded_accounts ?id ?input_parameters
           ?maximum_execution_frequency ?resource_id_scope
           ?resource_types_scope ?tag_key_scope ?tag_value_scope
           ?timeouts ~name ~rule_identifier ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?excluded_accounts ?id
    ?input_parameters ?maximum_execution_frequency ?resource_id_scope
    ?resource_types_scope ?tag_key_scope ?tag_value_scope ?timeouts
    ~name ~rule_identifier __id =
  let (r : _ Tf_core.resource) =
    make ?description ?excluded_accounts ?id ?input_parameters
      ?maximum_execution_frequency ?resource_id_scope
      ?resource_types_scope ?tag_key_scope ?tag_value_scope ?timeouts
      ~name ~rule_identifier __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
