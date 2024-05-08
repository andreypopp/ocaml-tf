(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type container_provider__info__eks_info = { namespace : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : container_provider__info__eks_info) -> ()

let yojson_of_container_provider__info__eks_info =
  (function
   | { namespace = v_namespace } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace in
         ("namespace", arg) :: bnds
       in
       `Assoc bnds
    : container_provider__info__eks_info ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_container_provider__info__eks_info

[@@@deriving.end]

type container_provider__info = {
  eks_info : container_provider__info__eks_info list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_eks_info then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_container_provider__info__eks_info)
               v_eks_info
           in
           let bnd = "eks_info", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : container_provider__info -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_container_provider__info

[@@@deriving.end]

type container_provider = {
  id : string prop;
  info : container_provider__info list;
      [@default []] [@yojson_drop_default ( = )]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : container_provider) -> ()

let yojson_of_container_provider =
  (function
   | { id = v_id; info = v_info; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         if [] = v_info then bnds
         else
           let arg =
             (yojson_of_list yojson_of_container_provider__info)
               v_info
           in
           let bnd = "info", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : container_provider -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_container_provider

[@@@deriving.end]

type aws_emrcontainers_virtual_cluster = {
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  virtual_cluster_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_emrcontainers_virtual_cluster) -> ()

let yojson_of_aws_emrcontainers_virtual_cluster =
  (function
   | {
       id = v_id;
       tags = v_tags;
       virtual_cluster_id = v_virtual_cluster_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_virtual_cluster_id
         in
         ("virtual_cluster_id", arg) :: bnds
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

let aws_emrcontainers_virtual_cluster ?id ?tags ~virtual_cluster_id
    () : aws_emrcontainers_virtual_cluster =
  { id; tags; virtual_cluster_id }

type t = {
  tf_name : string;
  arn : string prop;
  container_provider : container_provider list prop;
  created_at : string prop;
  id : string prop;
  name : string prop;
  state : string prop;
  tags : (string * string) list prop;
  virtual_cluster_id : string prop;
}

let make ?id ?tags ~virtual_cluster_id __id =
  let __type = "aws_emrcontainers_virtual_cluster" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       container_provider =
         Prop.computed __type __id "container_provider";
       created_at = Prop.computed __type __id "created_at";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       state = Prop.computed __type __id "state";
       tags = Prop.computed __type __id "tags";
       virtual_cluster_id =
         Prop.computed __type __id "virtual_cluster_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_emrcontainers_virtual_cluster
        (aws_emrcontainers_virtual_cluster ?id ?tags
           ~virtual_cluster_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~virtual_cluster_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~virtual_cluster_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
