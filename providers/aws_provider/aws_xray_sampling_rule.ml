(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_xray_sampling_rule = {
  attributes : (string * string prop) list option; [@option]
      (** attributes *)
  fixed_rate : float prop;  (** fixed_rate *)
  host : string prop;  (** host *)
  http_method : string prop;  (** http_method *)
  id : string prop option; [@option]  (** id *)
  priority : float prop;  (** priority *)
  reservoir_size : float prop;  (** reservoir_size *)
  resource_arn : string prop;  (** resource_arn *)
  rule_name : string prop option; [@option]  (** rule_name *)
  service_name : string prop;  (** service_name *)
  service_type : string prop;  (** service_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  url_path : string prop;  (** url_path *)
  version : float prop;  (** version *)
}
[@@deriving yojson_of]
(** aws_xray_sampling_rule *)

let aws_xray_sampling_rule ?attributes ?id ?rule_name ?tags ?tags_all
    ~fixed_rate ~host ~http_method ~priority ~reservoir_size
    ~resource_arn ~service_name ~service_type ~url_path ~version
    __resource_id =
  let __resource_type = "aws_xray_sampling_rule" in
  let __resource =
    {
      attributes;
      fixed_rate;
      host;
      http_method;
      id;
      priority;
      reservoir_size;
      resource_arn;
      rule_name;
      service_name;
      service_type;
      tags;
      tags_all;
      url_path;
      version;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_xray_sampling_rule __resource);
  ()
