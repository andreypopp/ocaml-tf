(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type selector = {
  labels : (string * string prop) list option; [@option]
  namespace : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : selector) -> ()

let yojson_of_selector =
  (function
   | { labels = v_labels; namespace = v_namespace } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace in
         ("namespace", arg) :: bnds
       in
       let bnds =
         match v_labels with
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
             let bnd = "labels", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : selector -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_selector

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
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
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_eks_fargate_profile = {
  cluster_name : string prop;
  fargate_profile_name : string prop;
  id : string prop option; [@option]
  pod_execution_role_arn : string prop;
  subnet_ids : string prop list option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  selector : selector list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_eks_fargate_profile) -> ()

let yojson_of_aws_eks_fargate_profile =
  (function
   | {
       cluster_name = v_cluster_name;
       fargate_profile_name = v_fargate_profile_name;
       id = v_id;
       pod_execution_role_arn = v_pod_execution_role_arn;
       subnet_ids = v_subnet_ids;
       tags = v_tags;
       tags_all = v_tags_all;
       selector = v_selector;
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
         let arg = yojson_of_list yojson_of_selector v_selector in
         ("selector", arg) :: bnds
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
         match v_subnet_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "subnet_ids", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_pod_execution_role_arn
         in
         ("pod_execution_role_arn", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_fargate_profile_name
         in
         ("fargate_profile_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_name in
         ("cluster_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_eks_fargate_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_eks_fargate_profile

[@@@deriving.end]

let selector ?labels ~namespace () : selector = { labels; namespace }
let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_eks_fargate_profile ?id ?subnet_ids ?tags ?tags_all ?timeouts
    ~cluster_name ~fargate_profile_name ~pod_execution_role_arn
    ~selector () : aws_eks_fargate_profile =
  {
    cluster_name;
    fargate_profile_name;
    id;
    pod_execution_role_arn;
    subnet_ids;
    tags;
    tags_all;
    selector;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  cluster_name : string prop;
  fargate_profile_name : string prop;
  id : string prop;
  pod_execution_role_arn : string prop;
  status : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?subnet_ids ?tags ?tags_all ?timeouts ~cluster_name
    ~fargate_profile_name ~pod_execution_role_arn ~selector __id =
  let __type = "aws_eks_fargate_profile" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       cluster_name = Prop.computed __type __id "cluster_name";
       fargate_profile_name =
         Prop.computed __type __id "fargate_profile_name";
       id = Prop.computed __type __id "id";
       pod_execution_role_arn =
         Prop.computed __type __id "pod_execution_role_arn";
       status = Prop.computed __type __id "status";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_eks_fargate_profile
        (aws_eks_fargate_profile ?id ?subnet_ids ?tags ?tags_all
           ?timeouts ~cluster_name ~fargate_profile_name
           ~pod_execution_role_arn ~selector ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?subnet_ids ?tags ?tags_all ?timeouts
    ~cluster_name ~fargate_profile_name ~pod_execution_role_arn
    ~selector __id =
  let (r : _ Tf_core.resource) =
    make ?id ?subnet_ids ?tags ?tags_all ?timeouts ~cluster_name
      ~fargate_profile_name ~pod_execution_role_arn ~selector __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
