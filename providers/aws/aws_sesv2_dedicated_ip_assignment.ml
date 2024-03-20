(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_sesv2_dedicated_ip_assignment = {
  destination_pool_name : string prop;  (** destination_pool_name *)
  id : string prop option; [@option]  (** id *)
  ip : string prop;  (** ip *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_sesv2_dedicated_ip_assignment *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_sesv2_dedicated_ip_assignment ?id ?timeouts
    ~destination_pool_name ~ip () : aws_sesv2_dedicated_ip_assignment
    =
  { destination_pool_name; id; ip; timeouts }

type t = {
  destination_pool_name : string prop;
  id : string prop;
  ip : string prop;
}

let make ?id ?timeouts ~destination_pool_name ~ip __id =
  let __type = "aws_sesv2_dedicated_ip_assignment" in
  let __attrs =
    ({
       destination_pool_name =
         Prop.computed __type __id "destination_pool_name";
       id = Prop.computed __type __id "id";
       ip = Prop.computed __type __id "ip";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sesv2_dedicated_ip_assignment
        (aws_sesv2_dedicated_ip_assignment ?id ?timeouts
           ~destination_pool_name ~ip ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~destination_pool_name ~ip __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~destination_pool_name ~ip __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
