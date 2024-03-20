(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_sesv2_dedicated_ip_pool = {
  id : string prop option; [@option]  (** id *)
  pool_name : string prop;  (** pool_name *)
  scaling_mode : string prop option; [@option]  (** scaling_mode *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_sesv2_dedicated_ip_pool *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_sesv2_dedicated_ip_pool ?id ?scaling_mode ?tags ?tags_all
    ?timeouts ~pool_name () : aws_sesv2_dedicated_ip_pool =
  { id; pool_name; scaling_mode; tags; tags_all; timeouts }

type t = {
  arn : string prop;
  id : string prop;
  pool_name : string prop;
  scaling_mode : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?scaling_mode ?tags ?tags_all ?timeouts ~pool_name __id
    =
  let __type = "aws_sesv2_dedicated_ip_pool" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       pool_name = Prop.computed __type __id "pool_name";
       scaling_mode = Prop.computed __type __id "scaling_mode";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sesv2_dedicated_ip_pool
        (aws_sesv2_dedicated_ip_pool ?id ?scaling_mode ?tags
           ?tags_all ?timeouts ~pool_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?scaling_mode ?tags ?tags_all ?timeouts
    ~pool_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?scaling_mode ?tags ?tags_all ?timeouts ~pool_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
