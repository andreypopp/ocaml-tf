(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type organization_configuration = {
  configuration_type : string prop;  (** configuration_type *)
}
[@@deriving yojson_of]
(** organization_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_securityhub_organization_configuration = {
  auto_enable : bool prop;  (** auto_enable *)
  auto_enable_standards : string prop option; [@option]
      (** auto_enable_standards *)
  id : string prop option; [@option]  (** id *)
  organization_configuration : organization_configuration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_securityhub_organization_configuration *)

let organization_configuration ~configuration_type () :
    organization_configuration =
  { configuration_type }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_securityhub_organization_configuration ?auto_enable_standards
    ?id ?timeouts ~auto_enable ~organization_configuration () :
    aws_securityhub_organization_configuration =
  {
    auto_enable;
    auto_enable_standards;
    id;
    organization_configuration;
    timeouts;
  }

type t = {
  auto_enable : bool prop;
  auto_enable_standards : string prop;
  id : string prop;
}

let register ?tf_module ?auto_enable_standards ?id ?timeouts
    ~auto_enable ~organization_configuration __resource_id =
  let __resource_type =
    "aws_securityhub_organization_configuration"
  in
  let __resource =
    aws_securityhub_organization_configuration ?auto_enable_standards
      ?id ?timeouts ~auto_enable ~organization_configuration ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_securityhub_organization_configuration __resource);
  let __resource_attributes =
    ({
       auto_enable =
         Prop.computed __resource_type __resource_id "auto_enable";
       auto_enable_standards =
         Prop.computed __resource_type __resource_id
           "auto_enable_standards";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
