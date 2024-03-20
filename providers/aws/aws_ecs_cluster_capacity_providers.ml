(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type default_capacity_provider_strategy = {
  base : float prop option; [@option]  (** base *)
  capacity_provider : string prop;  (** capacity_provider *)
  weight : float prop option; [@option]  (** weight *)
}
[@@deriving yojson_of]
(** default_capacity_provider_strategy *)

type aws_ecs_cluster_capacity_providers = {
  capacity_providers : string prop list option; [@option]
      (** capacity_providers *)
  cluster_name : string prop;  (** cluster_name *)
  id : string prop option; [@option]  (** id *)
  default_capacity_provider_strategy :
    default_capacity_provider_strategy list;
}
[@@deriving yojson_of]
(** aws_ecs_cluster_capacity_providers *)

let default_capacity_provider_strategy ?base ?weight
    ~capacity_provider () : default_capacity_provider_strategy =
  { base; capacity_provider; weight }

let aws_ecs_cluster_capacity_providers ?capacity_providers ?id
    ~cluster_name ~default_capacity_provider_strategy () :
    aws_ecs_cluster_capacity_providers =
  {
    capacity_providers;
    cluster_name;
    id;
    default_capacity_provider_strategy;
  }

type t = {
  capacity_providers : string list prop;
  cluster_name : string prop;
  id : string prop;
}

let make ?capacity_providers ?id ~cluster_name
    ~default_capacity_provider_strategy __id =
  let __type = "aws_ecs_cluster_capacity_providers" in
  let __attrs =
    ({
       capacity_providers =
         Prop.computed __type __id "capacity_providers";
       cluster_name = Prop.computed __type __id "cluster_name";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ecs_cluster_capacity_providers
        (aws_ecs_cluster_capacity_providers ?capacity_providers ?id
           ~cluster_name ~default_capacity_provider_strategy ());
    attrs = __attrs;
  }

let register ?tf_module ?capacity_providers ?id ~cluster_name
    ~default_capacity_provider_strategy __id =
  let (r : _ Tf_core.resource) =
    make ?capacity_providers ?id ~cluster_name
      ~default_capacity_provider_strategy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
