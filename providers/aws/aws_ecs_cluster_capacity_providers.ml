(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type default_capacity_provider_strategy = {
  base : float prop option; [@option]
  capacity_provider : string prop;
  weight : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_capacity_provider_strategy) -> ()

let yojson_of_default_capacity_provider_strategy =
  (function
   | {
       base = v_base;
       capacity_provider = v_capacity_provider;
       weight = v_weight;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_weight with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "weight", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_capacity_provider
         in
         ("capacity_provider", arg) :: bnds
       in
       let bnds =
         match v_base with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "base", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_capacity_provider_strategy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_capacity_provider_strategy

[@@@deriving.end]

type aws_ecs_cluster_capacity_providers = {
  capacity_providers : string prop list option; [@option]
  cluster_name : string prop;
  id : string prop option; [@option]
  default_capacity_provider_strategy :
    default_capacity_provider_strategy list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ecs_cluster_capacity_providers) -> ()

let yojson_of_aws_ecs_cluster_capacity_providers =
  (function
   | {
       capacity_providers = v_capacity_providers;
       cluster_name = v_cluster_name;
       id = v_id;
       default_capacity_provider_strategy =
         v_default_capacity_provider_strategy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_capacity_provider_strategy
             v_default_capacity_provider_strategy
         in
         ("default_capacity_provider_strategy", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_name in
         ("cluster_name", arg) :: bnds
       in
       let bnds =
         match v_capacity_providers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "capacity_providers", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ecs_cluster_capacity_providers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ecs_cluster_capacity_providers

[@@@deriving.end]

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
