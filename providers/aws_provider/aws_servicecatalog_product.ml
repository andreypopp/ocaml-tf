(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_servicecatalog_product__provisioning_artifact_parameters = {
  description : string prop option; [@option]  (** description *)
  disable_template_validation : bool prop option; [@option]
      (** disable_template_validation *)
  name : string prop option; [@option]  (** name *)
  template_physical_id : string prop option; [@option]
      (** template_physical_id *)
  template_url : string prop option; [@option]  (** template_url *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_servicecatalog_product__provisioning_artifact_parameters *)

type aws_servicecatalog_product__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_servicecatalog_product__timeouts *)

type aws_servicecatalog_product = {
  accept_language : string prop option; [@option]
      (** accept_language *)
  description : string prop option; [@option]  (** description *)
  distributor : string prop option; [@option]  (** distributor *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  owner : string prop;  (** owner *)
  support_description : string prop option; [@option]
      (** support_description *)
  support_email : string prop option; [@option]  (** support_email *)
  support_url : string prop option; [@option]  (** support_url *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop; [@key "type"]  (** type *)
  provisioning_artifact_parameters :
    aws_servicecatalog_product__provisioning_artifact_parameters list;
  timeouts : aws_servicecatalog_product__timeouts option;
}
[@@deriving yojson_of]
(** aws_servicecatalog_product *)

let aws_servicecatalog_product ?accept_language ?description
    ?distributor ?id ?support_description ?support_email ?support_url
    ?tags ?tags_all ?timeouts ~name ~owner ~type_
    ~provisioning_artifact_parameters __resource_id =
  let __resource_type = "aws_servicecatalog_product" in
  let __resource =
    {
      accept_language;
      description;
      distributor;
      id;
      name;
      owner;
      support_description;
      support_email;
      support_url;
      tags;
      tags_all;
      type_;
      provisioning_artifact_parameters;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_servicecatalog_product __resource);
  ()
