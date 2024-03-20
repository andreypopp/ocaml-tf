(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type selector = {
  labels : (string * string prop) list option; [@option]
      (** labels *)
  namespace : string prop;  (** namespace *)
}
[@@deriving yojson_of]
(** selector *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_eks_fargate_profile = {
  cluster_name : string prop;  (** cluster_name *)
  fargate_profile_name : string prop;  (** fargate_profile_name *)
  id : string prop option; [@option]  (** id *)
  pod_execution_role_arn : string prop;
      (** pod_execution_role_arn *)
  subnet_ids : string prop list option; [@option]  (** subnet_ids *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  selector : selector list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_eks_fargate_profile *)

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
