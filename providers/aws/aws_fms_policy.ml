(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_fms_policy__exclude_map = {
  account : string prop list option; [@option]  (** account *)
  orgunit : string prop list option; [@option]  (** orgunit *)
}
[@@deriving yojson_of]
(** aws_fms_policy__exclude_map *)

type aws_fms_policy__include_map = {
  account : string prop list option; [@option]  (** account *)
  orgunit : string prop list option; [@option]  (** orgunit *)
}
[@@deriving yojson_of]
(** aws_fms_policy__include_map *)

type aws_fms_policy__security_service_policy_data__policy_option__network_firewall_policy = {
  firewall_deployment_model : string prop option; [@option]
      (** firewall_deployment_model *)
}
[@@deriving yojson_of]
(** aws_fms_policy__security_service_policy_data__policy_option__network_firewall_policy *)

type aws_fms_policy__security_service_policy_data__policy_option__third_party_firewall_policy = {
  firewall_deployment_model : string prop option; [@option]
      (** firewall_deployment_model *)
}
[@@deriving yojson_of]
(** aws_fms_policy__security_service_policy_data__policy_option__third_party_firewall_policy *)

type aws_fms_policy__security_service_policy_data__policy_option = {
  network_firewall_policy :
    aws_fms_policy__security_service_policy_data__policy_option__network_firewall_policy
    list;
  third_party_firewall_policy :
    aws_fms_policy__security_service_policy_data__policy_option__third_party_firewall_policy
    list;
}
[@@deriving yojson_of]
(** aws_fms_policy__security_service_policy_data__policy_option *)

type aws_fms_policy__security_service_policy_data = {
  managed_service_data : string prop option; [@option]
      (** managed_service_data *)
  type_ : string prop; [@key "type"]  (** type *)
  policy_option :
    aws_fms_policy__security_service_policy_data__policy_option list;
}
[@@deriving yojson_of]
(** aws_fms_policy__security_service_policy_data *)

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
  exclude_map : aws_fms_policy__exclude_map list;
  include_map : aws_fms_policy__include_map list;
  security_service_policy_data :
    aws_fms_policy__security_service_policy_data list;
}
[@@deriving yojson_of]
(** aws_fms_policy *)

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

let aws_fms_policy ?delete_all_policy_resources
    ?delete_unused_fm_managed_resources ?description ?id
    ?remediation_enabled ?resource_tags ?resource_type
    ?resource_type_list ?tags ?tags_all ~exclude_resource_tags ~name
    ~exclude_map ~include_map ~security_service_policy_data
    __resource_id =
  let __resource_type = "aws_fms_policy" in
  let __resource =
    ({
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
      : aws_fms_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_fms_policy __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       delete_all_policy_resources =
         Prop.computed __resource_type __resource_id
           "delete_all_policy_resources";
       delete_unused_fm_managed_resources =
         Prop.computed __resource_type __resource_id
           "delete_unused_fm_managed_resources";
       description =
         Prop.computed __resource_type __resource_id "description";
       exclude_resource_tags =
         Prop.computed __resource_type __resource_id
           "exclude_resource_tags";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       policy_update_token =
         Prop.computed __resource_type __resource_id
           "policy_update_token";
       remediation_enabled =
         Prop.computed __resource_type __resource_id
           "remediation_enabled";
       resource_tags =
         Prop.computed __resource_type __resource_id "resource_tags";
       resource_type =
         Prop.computed __resource_type __resource_id "resource_type";
       resource_type_list =
         Prop.computed __resource_type __resource_id
           "resource_type_list";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
