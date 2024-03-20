(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type cluster_certificates = {
  aws_hardware_certificate : string prop;
      (** aws_hardware_certificate *)
  cluster_certificate : string prop;  (** cluster_certificate *)
  cluster_csr : string prop;  (** cluster_csr *)
  hsm_certificate : string prop;  (** hsm_certificate *)
  manufacturer_hardware_certificate : string prop;
      (** manufacturer_hardware_certificate *)
}
[@@deriving yojson_of]

type aws_cloudhsm_v2_cluster = {
  hsm_type : string prop;  (** hsm_type *)
  id : string prop option; [@option]  (** id *)
  source_backup_identifier : string prop option; [@option]
      (** source_backup_identifier *)
  subnet_ids : string prop list;  (** subnet_ids *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_cloudhsm_v2_cluster *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_cloudhsm_v2_cluster ?id ?source_backup_identifier ?tags
    ?tags_all ?timeouts ~hsm_type ~subnet_ids () :
    aws_cloudhsm_v2_cluster =
  {
    hsm_type;
    id;
    source_backup_identifier;
    subnet_ids;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  cluster_certificates : cluster_certificates list prop;
  cluster_id : string prop;
  cluster_state : string prop;
  hsm_type : string prop;
  id : string prop;
  security_group_id : string prop;
  source_backup_identifier : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

let make ?id ?source_backup_identifier ?tags ?tags_all ?timeouts
    ~hsm_type ~subnet_ids __id =
  let __type = "aws_cloudhsm_v2_cluster" in
  let __attrs =
    ({
       cluster_certificates =
         Prop.computed __type __id "cluster_certificates";
       cluster_id = Prop.computed __type __id "cluster_id";
       cluster_state = Prop.computed __type __id "cluster_state";
       hsm_type = Prop.computed __type __id "hsm_type";
       id = Prop.computed __type __id "id";
       security_group_id =
         Prop.computed __type __id "security_group_id";
       source_backup_identifier =
         Prop.computed __type __id "source_backup_identifier";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudhsm_v2_cluster
        (aws_cloudhsm_v2_cluster ?id ?source_backup_identifier ?tags
           ?tags_all ?timeouts ~hsm_type ~subnet_ids ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?source_backup_identifier ?tags ?tags_all
    ?timeouts ~hsm_type ~subnet_ids __id =
  let (r : _ Tf_core.resource) =
    make ?id ?source_backup_identifier ?tags ?tags_all ?timeouts
      ~hsm_type ~subnet_ids __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
