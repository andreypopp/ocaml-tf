(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?prefix ~bucket __id =
  let __type = "aws_spot_datafeed_subscription" in
  let __attrs =
    ({
       bucket = Prop.computed __type __id "bucket";
       id = Prop.computed __type __id "id";
       prefix = Prop.computed __type __id "prefix";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_spot_datafeed_subscription
        (aws_spot_datafeed_subscription ?id ?prefix ~bucket ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?prefix ~bucket __id =
  let (r : _ Tf_core.resource) = make ?id ?prefix ~bucket __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
