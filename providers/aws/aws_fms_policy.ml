(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type exclude_map = {
  account : string prop list option; [@option]  (** account *)
  orgunit : string prop list option; [@option]  (** orgunit *)
}
[@@deriving yojson_of]
(** exclude_map *)

type include_map = {
  account : string prop list option; [@option]  (** account *)
  orgunit : string prop list option; [@option]  (** orgunit *)
}
[@@deriving yojson_of]
(** include_map *)

type security_service_policy_data__policy_option__network_firewall_policy = {
  firewall_deployment_model : string prop option; [@option]
      (** firewall_deployment_model *)
}
[@@deriving yojson_of]
(** security_service_policy_data__policy_option__network_firewall_policy *)

type security_service_policy_data__policy_option__third_party_firewall_policy = {
  firewall_deployment_model : string prop option; [@option]
      (** firewall_deployment_model *)
}
[@@deriving yojson_of]
(** security_service_policy_data__policy_option__third_party_firewall_policy *)

type security_service_policy_data__policy_option = {
  network_firewall_policy :
    security_service_policy_data__policy_option__network_firewall_policy
    list;
  third_party_firewall_policy :
    security_service_policy_data__policy_option__third_party_firewall_policy
    list;
}
[@@deriving yojson_of]
(** security_service_policy_data__policy_option *)

type security_service_policy_data = {
  managed_service_data : string prop option; [@option]
      (** managed_service_data *)
  type_ : string prop; [@key "type"]  (** type *)
  policy_option : security_service_policy_data__policy_option list;
}
[@@deriving yojson_of]
(** security_service_policy_data *)

type aws_fms_policy = {
  delete_all_policy_resources : bool prop option; [@option]
      (** delete_all_policy_resources *)
  delete_unused_fm_managed_resources : bool prop option; [@option]
      (** delete_unused_fm_managed_resources *)
  description : string prop option; [@option]  (** description *)
  exclude_resource_tags : bool prop;  (** exclude_resource_tags *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  remediation_enabled : bool prop option; [@option]
      (** remediation_enabled *)
  resource_tags : (string * string prop) list option; [@option]
      (** resource_tags *)
  resource_type : string prop option; [@option]  (** resource_type *)
  resource_type_list : string prop list option; [@option]
      (** resource_type_list *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  exclude_map : exclude_map list;
  include_map : include_map list;
  security_service_policy_data : security_service_policy_data list;
}
[@@deriving yojson_of]
(** aws_fms_policy *)

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
    ~network_firewall_policy ~third_party_firewall_policy () :
    security_service_policy_data__policy_option =
  { network_firewall_policy; third_party_firewall_policy }

let security_service_policy_data ?managed_service_data ~type_
    ~policy_option () : security_service_policy_data =
  { managed_service_data; type_; policy_option }

let aws_fms_policy ?delete_all_policy_resources
    ?delete_unused_fm_managed_resources ?description ?id
    ?remediation_enabled ?resource_tags ?resource_type
    ?resource_type_list ?tags ?tags_all ~exclude_resource_tags ~name
    ~exclude_map ~include_map ~security_service_policy_data () :
    aws_fms_policy =
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
    ?resource_type_list ?tags ?tags_all ~exclude_resource_tags ~name
    ~exclude_map ~include_map ~security_service_policy_data __id =
  let __type = "aws_fms_policy" in
  let __attrs =
    ({
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
           ?resource_type_list ?tags ?tags_all ~exclude_resource_tags
           ~name ~exclude_map ~include_map
           ~security_service_policy_data ());
    attrs = __attrs;
  }

let register ?tf_module ?delete_all_policy_resources
    ?delete_unused_fm_managed_resources ?description ?id
    ?remediation_enabled ?resource_tags ?resource_type
    ?resource_type_list ?tags ?tags_all ~exclude_resource_tags ~name
    ~exclude_map ~include_map ~security_service_policy_data __id =
  let (r : _ Tf_core.resource) =
    make ?delete_all_policy_resources
      ?delete_unused_fm_managed_resources ?description ?id
      ?remediation_enabled ?resource_tags ?resource_type
      ?resource_type_list ?tags ?tags_all ~exclude_resource_tags
      ~name ~exclude_map ~include_map ~security_service_policy_data
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
