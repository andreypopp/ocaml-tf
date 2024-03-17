(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_api_gateway_api_key = {
  customer_id : string prop option; [@option]  (** customer_id *)
  description : string prop option; [@option]  (** description *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_api_gateway_api_key *)

type t = {
  arn : string prop;
  created_date : string prop;
  customer_id : string prop;
  description : string prop;
  enabled : bool prop;
  id : string prop;
  last_updated_date : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  value : string prop;
}

let aws_api_gateway_api_key ?customer_id ?description ?enabled ?id
    ?tags ?tags_all ?value ~name __resource_id =
  let __resource_type = "aws_api_gateway_api_key" in
  let __resource =
    ({
       customer_id;
       description;
       enabled;
       id;
       name;
       tags;
       tags_all;
       value;
     }
      : aws_api_gateway_api_key)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_api_key __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       created_date =
         Prop.computed __resource_type __resource_id "created_date";
       customer_id =
         Prop.computed __resource_type __resource_id "customer_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
       last_updated_date =
         Prop.computed __resource_type __resource_id
           "last_updated_date";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       value = Prop.computed __resource_type __resource_id "value";
     }
      : t)
  in
  __resource_attributes
