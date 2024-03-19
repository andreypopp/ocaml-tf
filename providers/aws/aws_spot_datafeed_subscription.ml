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

let aws_spot_datafeed_subscription ?id ?prefix ~bucket () :
    aws_spot_datafeed_subscription =
  { bucket; id; prefix }

type t = {
  bucket : string prop;
  id : string prop;
  prefix : string prop;
}

let register ?tf_module ?id ?prefix ~bucket __resource_id =
  let __resource_type = "aws_spot_datafeed_subscription" in
  let __resource =
    aws_spot_datafeed_subscription ?id ?prefix ~bucket ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_spot_datafeed_subscription __resource);
  let __resource_attributes =
    ({
       bucket = Prop.computed __resource_type __resource_id "bucket";
       id = Prop.computed __resource_type __resource_id "id";
       prefix = Prop.computed __resource_type __resource_id "prefix";
     }
      : t)
  in
  __resource_attributes
