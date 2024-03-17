(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_xray_sampling_rule = {
  attributes : (string * string) list option; [@option]
      (** attributes *)
  fixed_rate : float;  (** fixed_rate *)
  host : string;  (** host *)
  http_method : string;  (** http_method *)
  priority : float;  (** priority *)
  reservoir_size : float;  (** reservoir_size *)
  resource_arn : string;  (** resource_arn *)
  rule_name : string option; [@option]  (** rule_name *)
  service_name : string;  (** service_name *)
  service_type : string;  (** service_type *)
  tags : (string * string) list option; [@option]  (** tags *)
  url_path : string;  (** url_path *)
  version : float;  (** version *)
}
[@@deriving yojson_of]
(** aws_xray_sampling_rule *)

let aws_xray_sampling_rule ?attributes ?rule_name ?tags ~fixed_rate
    ~host ~http_method ~priority ~reservoir_size ~resource_arn
    ~service_name ~service_type ~url_path ~version __resource_id =
  let __resource_type = "aws_xray_sampling_rule" in
  let __resource =
    {
      attributes;
      fixed_rate;
      host;
      http_method;
      priority;
      reservoir_size;
      resource_arn;
      rule_name;
      service_name;
      service_type;
      tags;
      url_path;
      version;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_xray_sampling_rule __resource);
  ()
