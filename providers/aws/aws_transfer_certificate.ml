(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_transfer_certificate = {
  certificate : string prop;  (** certificate *)
  certificate_chain : string prop option; [@option]
      (** certificate_chain *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  private_key : string prop option; [@option]  (** private_key *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  usage : string prop;  (** usage *)
}
[@@deriving yojson_of]
(** aws_transfer_certificate *)

type t = {
  active_date : string prop;
  arn : string prop;
  certificate : string prop;
  certificate_chain : string prop;
  certificate_id : string prop;
  description : string prop;
  id : string prop;
  inactive_date : string prop;
  private_key : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  usage : string prop;
}

let aws_transfer_certificate ?certificate_chain ?description ?id
    ?private_key ?tags ?tags_all ~certificate ~usage __resource_id =
  let __resource_type = "aws_transfer_certificate" in
  let __resource =
    ({
       certificate;
       certificate_chain;
       description;
       id;
       private_key;
       tags;
       tags_all;
       usage;
     }
      : aws_transfer_certificate)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_transfer_certificate __resource);
  let __resource_attributes =
    ({
       active_date =
         Prop.computed __resource_type __resource_id "active_date";
       arn = Prop.computed __resource_type __resource_id "arn";
       certificate =
         Prop.computed __resource_type __resource_id "certificate";
       certificate_chain =
         Prop.computed __resource_type __resource_id
           "certificate_chain";
       certificate_id =
         Prop.computed __resource_type __resource_id "certificate_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       inactive_date =
         Prop.computed __resource_type __resource_id "inactive_date";
       private_key =
         Prop.computed __resource_type __resource_id "private_key";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       usage = Prop.computed __resource_type __resource_id "usage";
     }
      : t)
  in
  __resource_attributes
