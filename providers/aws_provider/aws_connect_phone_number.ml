(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_connect_phone_number__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_connect_phone_number__timeouts *)

type aws_connect_phone_number__status = {
  message : string;  (** message *)
  status : string;  (** status *)
}
[@@deriving yojson_of]

type aws_connect_phone_number = {
  country_code : string;  (** country_code *)
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  prefix : string option; [@option]  (** prefix *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  target_arn : string;  (** target_arn *)
  type_ : string; [@key "type"]  (** type *)
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
