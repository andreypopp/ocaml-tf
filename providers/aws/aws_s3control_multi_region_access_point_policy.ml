(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type details = {
  name : string prop;  (** name *)
  policy : string prop;  (** policy *)
}
[@@deriving yojson_of]
(** details *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_s3control_multi_region_access_point_policy = {
  account_id : string prop option; [@option]  (** account_id *)
  id : string prop option; [@option]  (** id *)
  details : details list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_s3control_multi_region_access_point_policy *)

let details ~name ~policy () : details = { name; policy }
let timeouts ?create ?update () : timeouts = { create; update }

let aws_s3control_multi_region_access_point_policy ?account_id ?id
    ?timeouts ~details () :
    aws_s3control_multi_region_access_point_policy =
  { account_id; id; details; timeouts }

type t = {
  account_id : string prop;
  established : string prop;
  id : string prop;
  proposed : string prop;
}

let make ?account_id ?id ?timeouts ~details __id =
  let __type = "aws_s3control_multi_region_access_point_policy" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       established = Prop.computed __type __id "established";
       id = Prop.computed __type __id "id";
       proposed = Prop.computed __type __id "proposed";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3control_multi_region_access_point_policy
        (aws_s3control_multi_region_access_point_policy ?account_id
           ?id ?timeouts ~details ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?id ?timeouts ~details __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?id ?timeouts ~details __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
