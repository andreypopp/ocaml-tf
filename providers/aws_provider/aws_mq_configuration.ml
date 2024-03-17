(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_mq_configuration = {
  data : string;  (** data *)
  description : string option; [@option]  (** description *)
  engine_type : string;  (** engine_type *)
  engine_version : string;  (** engine_version *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_mq_configuration *)

let aws_mq_configuration ?description ?tags ~data ~engine_type
    ~engine_version ~name __resource_id =
  let __resource_type = "aws_mq_configuration" in
  let __resource =
    { data; description; engine_type; engine_version; name; tags }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_mq_configuration __resource);
  ()
