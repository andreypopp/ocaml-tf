(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_spot_datafeed_subscription = {
  bucket : string prop;  (** bucket *)
  id : string prop option; [@option]  (** id *)
  prefix : string prop option; [@option]  (** prefix *)
}
[@@deriving yojson_of]
(** aws_spot_datafeed_subscription *)

let aws_spot_datafeed_subscription ?id ?prefix ~bucket __resource_id
    =
  let __resource_type = "aws_spot_datafeed_subscription" in
  let __resource = { bucket; id; prefix } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_spot_datafeed_subscription __resource);
  ()
