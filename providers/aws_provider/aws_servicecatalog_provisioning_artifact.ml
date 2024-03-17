(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_servicecatalog_provisioning_artifact__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_servicecatalog_provisioning_artifact__timeouts *)

type aws_servicecatalog_provisioning_artifact = {
  accept_language : string option; [@option]  (** accept_language *)
  active : bool option; [@option]  (** active *)
  description : string option; [@option]  (** description *)
  disable_template_validation : bool option; [@option]
      (** disable_template_validation *)
  guidance : string option; [@option]  (** guidance *)
  id : string option; [@option]  (** id *)
  name : string option; [@option]  (** name *)
  product_id : string;  (** product_id *)
  template_physical_id : string option; [@option]
      (** template_physical_id *)
  template_url : string option; [@option]  (** template_url *)
  type_ : string option; [@option] [@key "type"]  (** type *)
  timeouts :
    aws_servicecatalog_provisioning_artifact__timeouts option;
}
[@@deriving yojson_of]
(** aws_servicecatalog_provisioning_artifact *)

let aws_servicecatalog_provisioning_artifact ?accept_language ?active
    ?description ?disable_template_validation ?guidance ?id ?name
    ?template_physical_id ?template_url ?type_ ?timeouts ~product_id
    __resource_id =
  let __resource_type = "aws_servicecatalog_provisioning_artifact" in
  let __resource =
    {
      accept_language;
      active;
      description;
      disable_template_validation;
      guidance;
      id;
      name;
      product_id;
      template_physical_id;
      template_url;
      type_;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_servicecatalog_provisioning_artifact __resource);
  ()
