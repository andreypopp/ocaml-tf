(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_securityhub_finding_aggregator = {
  id : string prop option; [@option]  (** id *)
  linking_mode : string prop;  (** linking_mode *)
  specified_regions : string prop list option; [@option]
      (** specified_regions *)
}
[@@deriving yojson_of]
(** aws_securityhub_finding_aggregator *)

let aws_securityhub_finding_aggregator ?id ?specified_regions
    ~linking_mode () : aws_securityhub_finding_aggregator =
  { id; linking_mode; specified_regions }

type t = {
  id : string prop;
  linking_mode : string prop;
  specified_regions : string list prop;
}

let make ?id ?specified_regions ~linking_mode __id =
  let __type = "aws_securityhub_finding_aggregator" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       linking_mode = Prop.computed __type __id "linking_mode";
       specified_regions =
         Prop.computed __type __id "specified_regions";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_securityhub_finding_aggregator
        (aws_securityhub_finding_aggregator ?id ?specified_regions
           ~linking_mode ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?specified_regions ~linking_mode __id =
  let (r : _ Tf_core.resource) =
    make ?id ?specified_regions ~linking_mode __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
