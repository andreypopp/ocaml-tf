(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_elastic_beanstalk_environment__setting = {
  name : string;  (** name *)
  namespace : string;  (** namespace *)
  resource : string option; [@option]  (** resource *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_elastic_beanstalk_environment__setting *)

type aws_elastic_beanstalk_environment__all_settings = {
  name : string;  (** name *)
  namespace : string;  (** namespace *)
  resource : string;  (** resource *)
  value : string;  (** value *)
}
[@@deriving yojson_of]

type aws_elastic_beanstalk_environment = {
  application : string;  (** application *)
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  poll_interval : string option; [@option]  (** poll_interval *)
  tags : (string * string) list option; [@option]  (** tags *)
  template_name : string option; [@option]  (** template_name *)
  tier : string option; [@option]  (** tier *)
  wait_for_ready_timeout : string option; [@option]
      (** wait_for_ready_timeout *)
  setting : aws_elastic_beanstalk_environment__setting list;
}
[@@deriving yojson_of]
(** aws_elastic_beanstalk_environment *)

let aws_elastic_beanstalk_environment ?description ?poll_interval
    ?tags ?template_name ?tier ?wait_for_ready_timeout ~application
    ~name ~setting __resource_id =
  let __resource_type = "aws_elastic_beanstalk_environment" in
  let __resource =
    {
      application;
      description;
      name;
      poll_interval;
      tags;
      template_name;
      tier;
      wait_for_ready_timeout;
      setting;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_elastic_beanstalk_environment __resource);
  ()
