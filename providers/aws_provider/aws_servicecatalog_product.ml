(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_servicecatalog_product__provisioning_artifact_parameters = {
  description : string option; [@option]  (** description *)
  disable_template_validation : bool option; [@option]
      (** disable_template_validation *)
  name : string option; [@option]  (** name *)
  template_physical_id : string option; [@option]
      (** template_physical_id *)
  template_url : string option; [@option]  (** template_url *)
  type_ : string option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_servicecatalog_product__provisioning_artifact_parameters *)

type aws_servicecatalog_product__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_servicecatalog_product__timeouts *)

type aws_servicecatalog_product = {
  accept_language : string option; [@option]  (** accept_language *)
  name : string;  (** name *)
  owner : string;  (** owner *)
  tags : (string * string) list option; [@option]  (** tags *)
  type_ : string; [@key "type"]  (** type *)
  provisioning_artifact_parameters :
    aws_servicecatalog_product__provisioning_artifact_parameters list;
  timeouts : aws_servicecatalog_product__timeouts option;
}
[@@deriving yojson_of]
(** aws_servicecatalog_product *)

let aws_servicecatalog_product ?accept_language ?tags ?timeouts ~name
    ~owner ~type_ ~provisioning_artifact_parameters __resource_id =
  let __resource_type = "aws_servicecatalog_product" in
  let __resource =
    {
      accept_language;
      name;
      owner;
      tags;
      type_;
      provisioning_artifact_parameters;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_servicecatalog_product __resource);
  ()
