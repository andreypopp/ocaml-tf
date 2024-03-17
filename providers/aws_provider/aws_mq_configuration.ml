(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_mq_configuration = {
  authentication_strategy : string prop option; [@option]
      (** authentication_strategy *)
  data : string prop;  (** data *)
  description : string prop option; [@option]  (** description *)
  engine_type : string prop;  (** engine_type *)
  engine_version : string prop;  (** engine_version *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_mq_configuration *)

let aws_mq_configuration ?authentication_strategy ?description ?id
    ?tags ?tags_all ~data ~engine_type ~engine_version ~name
    __resource_id =
  let __resource_type = "aws_mq_configuration" in
  let __resource =
    {
      authentication_strategy;
      data;
      description;
      engine_type;
      engine_version;
      id;
      name;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_mq_configuration __resource);
  ()
