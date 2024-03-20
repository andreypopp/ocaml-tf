(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_dx_gateway = {
  amazon_side_asn : string prop;  (** amazon_side_asn *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_dx_gateway *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_dx_gateway ?id ?timeouts ~amazon_side_asn ~name () :
    aws_dx_gateway =
  { amazon_side_asn; id; name; timeouts }

type t = {
  amazon_side_asn : string prop;
  id : string prop;
  name : string prop;
  owner_account_id : string prop;
}

let make ?id ?timeouts ~amazon_side_asn ~name __id =
  let __type = "aws_dx_gateway" in
  let __attrs =
    ({
       amazon_side_asn = Prop.computed __type __id "amazon_side_asn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       owner_account_id =
         Prop.computed __type __id "owner_account_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dx_gateway
        (aws_dx_gateway ?id ?timeouts ~amazon_side_asn ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~amazon_side_asn ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~amazon_side_asn ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
