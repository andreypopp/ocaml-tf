(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53_traffic_policy = {
  comment : string prop option; [@option]  (** comment *)
  document : string prop;  (** document *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_route53_traffic_policy *)

let aws_route53_traffic_policy ?comment ?id ~document ~name
    __resource_id =
  let __resource_type = "aws_route53_traffic_policy" in
  let __resource = { comment; document; id; name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_traffic_policy __resource);
  ()
