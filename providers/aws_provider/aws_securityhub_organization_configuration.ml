(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_securityhub_organization_configuration__organization_configuration = {
  configuration_type : string prop;  (** configuration_type *)
}
[@@deriving yojson_of]
(** aws_securityhub_organization_configuration__organization_configuration *)

type aws_securityhub_organization_configuration__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_securityhub_organization_configuration__timeouts *)

type aws_securityhub_organization_configuration = {
  auto_enable : bool prop;  (** auto_enable *)
  auto_enable_standards : string prop option; [@option]
      (** auto_enable_standards *)
  id : string prop option; [@option]  (** id *)
  organization_configuration :
    aws_securityhub_organization_configuration__organization_configuration
    list;
  timeouts :
    aws_securityhub_organization_configuration__timeouts option;
}
[@@deriving yojson_of]
(** aws_securityhub_organization_configuration *)

let aws_securityhub_organization_configuration ?auto_enable_standards
    ?id ?timeouts ~auto_enable ~organization_configuration
    __resource_id =
  let __resource_type =
    "aws_securityhub_organization_configuration"
  in
  let __resource =
    {
      auto_enable;
      auto_enable_standards;
      id;
      organization_configuration;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_securityhub_organization_configuration __resource);
  ()
