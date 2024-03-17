(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_security_center_assessment__status = {
  cause : string option; [@option]  (** cause *)
  code : string;  (** code *)
  description : string option; [@option]  (** description *)
}
[@@deriving yojson_of]
(** azurerm_security_center_assessment__status *)

type azurerm_security_center_assessment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_security_center_assessment__timeouts *)

type azurerm_security_center_assessment = {
  additional_data : (string * string) list option; [@option]
      (** additional_data *)
  assessment_policy_id : string;  (** assessment_policy_id *)
  target_resource_id : string;  (** target_resource_id *)
  status : azurerm_security_center_assessment__status list;
  timeouts : azurerm_security_center_assessment__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_security_center_assessment *)

let azurerm_security_center_assessment ?additional_data ?timeouts
    ~assessment_policy_id ~target_resource_id ~status __resource_id =
  let __resource_type = "azurerm_security_center_assessment" in
  let __resource =
    {
      additional_data;
      assessment_policy_id;
      target_resource_id;
      status;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_security_center_assessment __resource);
  ()
