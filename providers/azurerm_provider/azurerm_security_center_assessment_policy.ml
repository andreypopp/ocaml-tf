(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_security_center_assessment_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_security_center_assessment_policy__timeouts *)

type azurerm_security_center_assessment_policy = {
  description : string;  (** description *)
  display_name : string;  (** display_name *)
  implementation_effort : string option; [@option]
      (** implementation_effort *)
  remediation_description : string option; [@option]
      (** remediation_description *)
  severity : string option; [@option]  (** severity *)
  threats : string list option; [@option]  (** threats *)
  user_impact : string option; [@option]  (** user_impact *)
  timeouts :
    azurerm_security_center_assessment_policy__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_security_center_assessment_policy *)

let azurerm_security_center_assessment_policy ?implementation_effort
    ?remediation_description ?severity ?threats ?user_impact
    ?timeouts ~description ~display_name __resource_id =
  let __resource_type =
    "azurerm_security_center_assessment_policy"
  in
  let __resource =
    {
      description;
      display_name;
      implementation_effort;
      remediation_description;
      severity;
      threats;
      user_impact;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_security_center_assessment_policy __resource);
  ()
