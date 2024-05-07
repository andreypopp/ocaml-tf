(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type container_provider__info__eks_info = {
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : container_provider__info__eks_info) -> ()

let yojson_of_container_provider__info__eks_info =
  (function
   | { namespace = v_namespace } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_namespace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "namespace", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : container_provider__info__eks_info ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_container_provider__info__eks_info

[@@@deriving.end]

type container_provider__info = {
  eks_info : container_provider__info__eks_info list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : container_provider__info) -> ()

let yojson_of_container_provider__info =
  (function
   | { eks_info = v_eks_info } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_container_provider__info__eks_info v_eks_info
         in
         ("eks_info", arg) :: bnds
       in
       `Assoc bnds
    : container_provider__info -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_container_provider__info

[@@@deriving.end]

type container_provider = {
  id : string prop;
  type_ : string prop; [@key "type"]
  info : container_provider__info list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : container_provider) -> ()

let yojson_of_container_provider =
  (function
   | { id = v_id; type_ = v_type_; info = v_info } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_container_provider__info v_info
         in
         ("info", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : container_provider -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_container_provider

[@@@deriving.end]

type timeouts = { delete : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_emrcontainers_virtual_cluster = {
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  container_provider : container_provider list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_emrcontainers_virtual_cluster) -> ()

let yojson_of_aws_emrcontainers_virtual_cluster =
  (function
   | {
       id = v_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       container_provider = v_container_provider;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_container_provider
             v_container_provider
         in
         ("container_provider", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_emrcontainers_virtual_cluster ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_emrcontainers_virtual_cluster

[@@@deriving.end]

let container_provider__info__eks_info ?namespace () :
    container_provider__info__eks_info =
  { namespace }

let container_provider__info ~eks_info () : container_provider__info
    =
  { eks_info }

let container_provider ~id ~type_ ~info () : container_provider =
  { id; type_; info }

let timeouts ?delete () : timeouts = { delete }

let aws_emrcontainers_virtual_cluster ?id ?tags ?tags_all ?timeouts
    ~name ~container_provider () : aws_emrcontainers_virtual_cluster
    =
  { id; name; tags; tags_all; container_provider; timeouts }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ?timeouts ~name ~container_provider __id
    =
  let __type = "aws_emrcontainers_virtual_cluster" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_emrcontainers_virtual_cluster
        (aws_emrcontainers_virtual_cluster ?id ?tags ?tags_all
           ?timeouts ~name ~container_provider ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?timeouts ~name
    ~container_provider __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ?timeouts ~name ~container_provider __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
