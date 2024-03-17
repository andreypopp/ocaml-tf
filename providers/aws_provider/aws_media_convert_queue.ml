(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_media_convert_queue__reservation_plan_settings = {
  commitment : string;  (** commitment *)
  renewal_type : string;  (** renewal_type *)
  reserved_slots : float;  (** reserved_slots *)
}
[@@deriving yojson_of]
(** aws_media_convert_queue__reservation_plan_settings *)

type aws_media_convert_queue = {
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  pricing_plan : string option; [@option]  (** pricing_plan *)
  status : string option; [@option]  (** status *)
  tags : (string * string) list option; [@option]  (** tags *)
  reservation_plan_settings :
    aws_media_convert_queue__reservation_plan_settings list;
}
[@@deriving yojson_of]
(** aws_media_convert_queue *)

let aws_media_convert_queue ?description ?pricing_plan ?status ?tags
    ~name ~reservation_plan_settings __resource_id =
  let __resource_type = "aws_media_convert_queue" in
  let __resource =
    {
      description;
      name;
      pricing_plan;
      status;
      tags;
      reservation_plan_settings;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_media_convert_queue __resource);
  ()
