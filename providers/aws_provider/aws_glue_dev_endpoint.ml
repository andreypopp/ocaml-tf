(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_glue_dev_endpoint = {
  arguments : (string * string) list option; [@option]
      (** arguments *)
  extra_jars_s3_path : string option; [@option]
      (** extra_jars_s3_path *)
  extra_python_libs_s3_path : string option; [@option]
      (** extra_python_libs_s3_path *)
  glue_version : string option; [@option]  (** glue_version *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  number_of_nodes : float option; [@option]  (** number_of_nodes *)
  number_of_workers : float option; [@option]
      (** number_of_workers *)
  public_key : string option; [@option]  (** public_key *)
  public_keys : string list option; [@option]  (** public_keys *)
  role_arn : string;  (** role_arn *)
  security_configuration : string option; [@option]
      (** security_configuration *)
  security_group_ids : string list option; [@option]
      (** security_group_ids *)
  subnet_id : string option; [@option]  (** subnet_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  worker_type : string option; [@option]  (** worker_type *)
}
[@@deriving yojson_of]
(** aws_glue_dev_endpoint *)

let aws_glue_dev_endpoint ?arguments ?extra_jars_s3_path
    ?extra_python_libs_s3_path ?glue_version ?id ?number_of_nodes
    ?number_of_workers ?public_key ?public_keys
    ?security_configuration ?security_group_ids ?subnet_id ?tags
    ?tags_all ?worker_type ~name ~role_arn __resource_id =
  let __resource_type = "aws_glue_dev_endpoint" in
  let __resource =
    {
      arguments;
      extra_jars_s3_path;
      extra_python_libs_s3_path;
      glue_version;
      id;
      name;
      number_of_nodes;
      number_of_workers;
      public_key;
      public_keys;
      role_arn;
      security_configuration;
      security_group_ids;
      subnet_id;
      tags;
      tags_all;
      worker_type;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_dev_endpoint __resource);
  ()
