(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_media_convert_queue__reservation_plan_settings = {
  commitment : string prop;  (** commitment *)
  renewal_type : string prop;  (** renewal_type *)
  reserved_slots : float prop;  (** reserved_slots *)
}
[@@deriving yojson_of]
(** aws_media_convert_queue__reservation_plan_settings *)

type aws_media_convert_queue = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  pricing_plan : string prop option; [@option]  (** pricing_plan *)
  status : string prop option; [@option]  (** status *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  reservation_plan_settings :
    aws_media_convert_queue__reservation_plan_settings list;
}
[@@deriving yojson_of]
(** aws_media_convert_queue *)

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  pricing_plan : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_media_convert_queue ?description ?id ?pricing_plan ?status
    ?tags ?tags_all ~name ~reservation_plan_settings __resource_id =
  let __resource_type = "aws_media_convert_queue" in
  let __resource =
    ({
       description;
       id;
       name;
       pricing_plan;
       status;
       tags;
       tags_all;
       reservation_plan_settings;
     }
      : aws_media_convert_queue)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_media_convert_queue __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       pricing_plan =
         Prop.computed __resource_type __resource_id "pricing_plan";
       status = Prop.computed __resource_type __resource_id "status";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
