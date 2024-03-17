(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53_zone__vpc = {
  vpc_id : string;  (** vpc_id *)
  vpc_region : string option; [@option]  (** vpc_region *)
}
[@@deriving yojson_of]
(** aws_route53_zone__vpc *)

type aws_route53_zone = {
  comment : string option; [@option]  (** comment *)
  delegation_set_id : string option; [@option]
      (** delegation_set_id *)
  force_destroy : bool option; [@option]  (** force_destroy *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  vpc : aws_route53_zone__vpc list;
}
[@@deriving yojson_of]
(** aws_route53_zone *)

let aws_route53_zone ?comment ?delegation_set_id ?force_destroy ?tags
    ~name ~vpc __resource_id =
  let __resource_type = "aws_route53_zone" in
  let __resource =
    { comment; delegation_set_id; force_destroy; name; tags; vpc }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_zone __resource);
  ()
