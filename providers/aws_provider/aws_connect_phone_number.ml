(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_connect_phone_number__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_connect_phone_number__timeouts *)

type aws_connect_phone_number__status = {
  message : string prop;  (** message *)
  status : string prop;  (** status *)
}
[@@deriving yojson_of]

type aws_connect_phone_number = {
  country_code : string prop;  (** country_code *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  prefix : string prop option; [@option]  (** prefix *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  target_arn : string prop;  (** target_arn *)
  type_ : string prop; [@key "type"]  (** type *)
  timeouts : aws_connect_phone_number__timeouts option;
}
[@@deriving yojson_of]
(** aws_connect_phone_number *)

let aws_connect_phone_number ?description ?id ?prefix ?tags ?tags_all
    ?timeouts ~country_code ~target_arn ~type_ __resource_id =
  let __resource_type = "aws_connect_phone_number" in
  let __resource =
    {
      country_code;
      description;
      id;
      prefix;
      tags;
      tags_all;
      target_arn;
      type_;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_connect_phone_number __resource);
  ()
