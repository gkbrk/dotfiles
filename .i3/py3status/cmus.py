#!/usr/bin/env python
import subprocess

class Py3status:
    cache_timeout = 0

    def _get_cmus_info(self):
        cmus_remote_pipe = subprocess.Popen(["cmus-remote", "-Q"], stdout = subprocess.PIPE, stderr = subprocess.PIPE)
        cmus_info_text = cmus_remote_pipe.communicate()[0].decode()

        if cmus_info_text == "":
            return {}

        cmus_info = {
            "tags": {}
        };
    
        for line in cmus_info_text.splitlines():
            entry = line.split(None, 2)
            
            if entry[0] == "tag" and len(entry) > 2:
                cmus_info["tags"][entry[1]] = entry[2]
            elif len(entry) > 1:
                cmus_info[entry[0]] = entry[1]
    
        return cmus_info

    def cmus(self, i3s_output_list, i3s_config):
        response = {"cached_until": 3}
        cmus_info = self._get_cmus_info();
        
        response["full_text"] = ""
        text = []
        if "status" in cmus_info:
            if cmus_info["status"] == "paused":
                response["color"] = i3s_config["color_degraded"]

            if "artist" in cmus_info["tags"]:
                text.append(cmus_info["tags"]["artist"][:15])

            if "title" in cmus_info["tags"]:
                text.append(cmus_info["tags"]["title"][:20])

            response["full_text"] = "♪ : {}".format(" - ".join(text))

        return response

if __name__ == "__main__":
    """
    Test this module by calling it directly.
    """
    from time import sleep
    x = Py3status()
    while True:
        print(x.cmus([], {}))
        sleep(1)
