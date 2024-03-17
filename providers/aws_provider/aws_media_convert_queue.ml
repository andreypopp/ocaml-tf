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

let aws_media_convert_queue ?description ?id ?pricing_plan ?status
    ?tags ?tags_all ~name ~reservation_plan_settings __resource_id =
  let __resource_type = "aws_media_convert_queue" in
  let __resource =
    {
      description;
      id;
      name;
      pricing_plan;
      status;
      tags;
      tags_all;
      reservation_plan_settings;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_media_convert_queue __resource);
  ()
