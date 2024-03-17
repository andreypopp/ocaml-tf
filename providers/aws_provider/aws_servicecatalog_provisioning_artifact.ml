(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_servicecatalog_provisioning_artifact__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_servicecatalog_provisioning_artifact__timeouts *)

type aws_servicecatalog_provisioning_artifact = {
  accept_language : string prop option; [@option]
      (** accept_language *)
  active : bool prop option; [@option]  (** active *)
  description : string prop option; [@option]  (** description *)
  disable_template_validation : bool prop option; [@option]
      (** disable_template_validation *)
  guidance : string prop option; [@option]  (** guidance *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  product_id : string prop;  (** product_id *)
  template_physical_id : string prop option; [@option]
      (** template_physical_id *)
  template_url : string prop option; [@option]  (** template_url *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
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
