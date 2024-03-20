(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_cloudhsm_v2_hsm = {
  availability_zone : string prop option; [@option]
      (** availability_zone *)
  cluster_id : string prop;  (** cluster_id *)
  id : string prop option; [@option]  (** id *)
  ip_address : string prop option; [@option]  (** ip_address *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_cloudhsm_v2_hsm *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_cloudhsm_v2_hsm ?availability_zone ?id ?ip_address ?subnet_id
    ?timeouts ~cluster_id () : aws_cloudhsm_v2_hsm =
  {
    availability_zone;
    cluster_id;
    id;
    ip_address;
    subnet_id;
    timeouts;
  }

type t = {
  availability_zone : string prop;
  cluster_id : string prop;
  hsm_eni_id : string prop;
  hsm_id : string prop;
  hsm_state : string prop;
  id : string prop;
  ip_address : string prop;
  subnet_id : string prop;
}

let make ?availability_zone ?id ?ip_address ?subnet_id ?timeouts
    ~cluster_id __id =
  let __type = "aws_cloudhsm_v2_hsm" in
  let __attrs =
    ({
       availability_zone =
         Prop.computed __type __id "availability_zone";
       cluster_id = Prop.computed __type __id "cluster_id";
       hsm_eni_id = Prop.computed __type __id "hsm_eni_id";
       hsm_id = Prop.computed __type __id "hsm_id";
       hsm_state = Prop.computed __type __id "hsm_state";
       id = Prop.computed __type __id "id";
       ip_address = Prop.computed __type __id "ip_address";
       subnet_id = Prop.computed __type __id "subnet_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudhsm_v2_hsm
        (aws_cloudhsm_v2_hsm ?availability_zone ?id ?ip_address
           ?subnet_id ?timeouts ~cluster_id ());
    attrs = __attrs;
  }

let register ?tf_module ?availability_zone ?id ?ip_address ?subnet_id
    ?timeouts ~cluster_id __id =
  let (r : _ Tf_core.resource) =
    make ?availability_zone ?id ?ip_address ?subnet_id ?timeouts
      ~cluster_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
